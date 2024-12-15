import psycopg2
import pandas as pd

# Configurações de conexão com o PostgreSQL
host = "localhost"       # Substitua pelo endereço do servidor PostgreSQL
port = "5432"            # Porta padrão do PostgreSQL
database = "meu_banco"   # Substitua pelo nome do seu banco de dados
user = "seu_usuario"     # Substitua pelo seu usuário do PostgreSQL
password = "sua_senha"   # Substitua pela sua senha

# Conectar ao banco de dados
try:
    conn = psycopg2.connect(
        host=host,
        port=port,
        database=database,
        user=user,
        password=password
    )
    print("Conexão com PostgreSQL realizada com sucesso!")
except Exception as e:
    print(f"Erro ao conectar ao banco de dados: {e}")
    exit()

# Consultar os dados de usuários
query_usuarios = """
SELECT id_usuario, nome, email, telefone, estado
FROM tbUsuarios
"""
usuarios = pd.read_sql_query(query_usuarios, conn)

# Consultar os dados de pedidos
query_pedidos = """
SELECT id_pedido, id_usuario, data_pedido, status_pedido, total_pedido
FROM tbPedidos
"""
pedidos = pd.read_sql_query(query_pedidos, conn)

# Fechar a conexão com o banco
conn.close()

# Adicionar os pedidos aos usuários
usuarios = usuarios.merge(
    pedidos, how="left", on="id_usuario"
)

# Criar um Excel dividindo por estado
with pd.ExcelWriter("usuarios_por_estado.xlsx", engine="openpyxl") as writer:
    estados = usuarios['estado'].unique()
    for estado in estados:
        # Filtrar os usuários por estado
        usuarios_estado = usuarios[usuarios['estado'] == estado]
        # Adicionar a aba na planilha
        usuarios_estado.to_excel(writer, sheet_name=estado, index=False)

print("Planilha gerada com sucesso: usuarios_por_estado.xlsx")
