-- AquaPulse - Sistema de irrigação automática

-- AVISO !!! todos os usuarios são ficticios !!!

-- Banco de dados do SITE !!! 

-- Vendemos um unico tipo de produto 

-- MySQL

CREATE TABLE tbAdministradores (
  id_adm INT AUTO_INCREMENT PRIMARY KEY,
  nome_adm VARCHAR(100),
  sobrenome_adm VARCHAR(100),
  email_adm VARCHAR(100) UNIQUE,
  cargo_adm VARCHAR(100)
);

CREATE TABLE tbUsuarios (
  id_usuario INT AUTO_INCREMENT PRIMARY KEY,
  nome_usuario VARCHAR(100),
  sobrenome_usuario VARCHAR(100),
  email_usuario VARCHAR(255) UNIQUE,
  senha_usuario VARCHAR(255),
  cidade_usuario VARCHAR(255),
  estado_usuario VARCHAR(255)
);

CREATE TABLE tbPedidos (
  id_pedido INT AUTO_INCREMENT PRIMARY KEY,
  id_usuario INT,
  data_pedido DATE,
  status_pedido VARCHAR(50),
  total_pedido DECIMAL(10, 2),
  FOREIGN KEY (id_usuario) REFERENCES tbUsuarios(id_usuario)
);

CREATE TABLE tbComentarios (
  id_comentario INT AUTO_INCREMENT PRIMARY KEY,
  id_usuario INT,
  data_comentario DATE,
  conteudo_comentario VARCHAR(500),
  FOREIGN KEY (id_usuario) REFERENCES tbUsuarios(id_usuario)
);

CREATE TABLE tbMensagensSuporte (
  id_mensagem INT AUTO_INCREMENT PRIMARY KEY,
  id_usuario INT,
  data_mensagem DATE,
  conteudo_mensagem TEXT,
  FOREIGN KEY (id_usuario) REFERENCES tbUsuarios(id_usuario)
);

CREATE TABLE tbProdutos (
  id_produto INT AUTO_INCREMENT PRIMARY KEY,
  nome_produto VARCHAR(100),
  descricao_produto TEXT,
  preco_produto DECIMAL(10, 2),
  estoque_produto INT
);

CREATE TABLE tbEnderecos (
  id_endereco INT AUTO_INCREMENT PRIMARY KEY,
  id_usuario INT,
  endereco VARCHAR(255),
  cidade VARCHAR(100),
  estado VARCHAR(100),
  cep VARCHAR(10),
  FOREIGN KEY (id_usuario) REFERENCES tbUsuarios(id_usuario)
);

CREATE TABLE tbPagamentos (
  id_pagamento INT AUTO_INCREMENT PRIMARY KEY,
  id_pedido INT,
  data_pagamento DATE,
  valor_pagamento DECIMAL(10, 2),
  metodo_pagamento VARCHAR(50),
  status_pagamento VARCHAR(50),
  FOREIGN KEY (id_pedido) REFERENCES tbPedidos(id_pedido)
);

CREATE TABLE tbCategorias (
  id_categoria INT AUTO_INCREMENT PRIMARY KEY,
  nome_categoria VARCHAR(100),
  descricao_categoria TEXT
);

CREATE TABLE tbAvaliacoes (
  id_avaliacao INT AUTO_INCREMENT PRIMARY KEY,
  id_usuario INT,
  id_produto INT,
  data_avaliacao DATE,
  nota INT CHECK (nota >= 1 AND nota <= 5),
  comentario TEXT,
  FOREIGN KEY (id_usuario) REFERENCES tbUsuarios(id_usuario),
  FOREIGN KEY (id_produto) REFERENCES tbProdutos(id_produto)
);

INSERT INTO tbAdministradores (nome_adm, sobrenome_adm, email_adm, cargo_adm)
  VALUES ('Osmar', 'Araujo', 'osmar.s@estudante.ifmt.edu.br', 'Tech Lead'),
         ('Iago', 'Bortoluzzi', 'iagogabriel9710@gmail.com', 'chefe'),
         ('Pedro', 'Alves', 'pedro@gmail.com', 'estagiario'),
         ('Iago', 'Paiva', 'iagofouletto@gmail.com', 'estagiario'),
         ('Amir', 'Tamlieh', 'amir.t@estudante.ifmt.edu.br', 'freelancer'),
         ('Leonardo', 'Leite', 'leornardo@email.com', 'freelancer');

INSERT INTO tbUsuarios (nome_usuario, sobrenome_usuario, email_usuario, cidade_usuario, estado_usuario)
  VALUES ('Ana', 'Lima', 'ana.lima@email.com', 'Aracaju', 'Sergipe'),
         ('André', 'Silva', 'andre.silva@email.com', 'Aparecida de Goiânia', 'Goiás'),
         ('Amanda', 'Oliveira', 'amanda.oliveira@email.com', 'Anápolis', 'Goiás'),
         ('Alex', 'Souza', 'alex.souza@email.com', 'Alagoinhas', 'Bahia'),
         ('Arthur', 'Costa', 'arthur.costa@email.com', 'Amparo', 'São Paulo'),
         ('Bruna', 'Martins', 'bruna.martins@email.com', 'Belo Horizonte', 'Minas Gerais'),
         ('Bruno', 'Pereira', 'bruno.pereira@email.com', 'Barbacena', 'Minas Gerais'),
         ('Bianca', 'Rocha', 'bianca.rocha@email.com', 'Brasília', 'Distrito Federal'),
         ('Bárbara', 'Ferreira', 'barbara.ferreira@email.com', 'Bauru', 'São Paulo'),
         ('Benjamin', 'Santos', 'benjamin.santos@email.com', 'Belém', 'Pará'),
         ('Carlos', 'Mendes', 'carlos.mendes@email.com', 'Campinas', 'São Paulo'),
         ('Camila', 'Souza', 'camila.souza@email.com', 'Curitiba', 'Paraná'),
         ('Cecília', 'Lima', 'cecilia.lima@email.com', 'Caxias do Sul', 'Rio Grande do Sul'),                                   
         ('Caio', 'Alves', 'caio.alves@email.com', 'Cuiabá', 'Mato Grosso'),                         
         ('Cristina', 'Costa', 'cristina.costa@email.com', 'Campos dos Goytacazes', 'Rio de Janeiro'),
         ('Daniel', 'Silva', 'daniel.silva@email.com', 'Duque de Caxias', 'Rio de Janeiro'),
         ('Débora', 'Oliveira', 'debora.oliveira@email.com', 'Delmiro Gouveia', 'Alagoas'),
         ('David', 'Rodrigues', 'david.rodrigues@email.com', 'Dourados', 'Mato Grosso do Sul'),
         ('Daniele', 'Pereira', 'daniele.pereira@email.com', 'Divinópolis', 'Minas Gerais'),
         ('Douglas', 'Santos', 'douglas.santos@email.com', 'Diadema', 'São Paulo'),
         ('Eduardo', 'Costa', 'eduardo.costa@email.com', 'Espírito Santo do Pinhal', 'São Paulo'),
         ('Eliane', 'Martins', 'eliane.martins@email.com', 'Estância', 'Sergipe'),
         ('Emília', 'Gomes', 'emilia.gomes@email.com', 'Embu das Artes', 'São Paulo'),
         ('Enzo', 'Silva', 'enzo.silva@email.com', 'Eusébio', 'Ceará'),
         ('Evelyn', 'Souza', 'evelyn.souza@email.com', 'Embu-Guaçu', 'São Paulo'),
         ('Fabiana', 'Rocha', 'fabiana.rocha@email.com', 'Fortaleza', 'Ceará'),
         ('Felipe', 'Pereira', 'felipe.pereira@email.com', 'Florianópolis', 'Santa Catarina'),
         ('Fábio', 'Alves', 'fabio.alves@email.com', 'Foz do Iguaçu', 'Paraná'),
         ('Fernanda', 'Souza', 'fernanda.souza@email.com', 'Franca', 'São Paulo'),
         ('Francisco', 'Santos', 'francisco.santos@email.com', 'Feira de Santana', 'Bahia'),
         ('Gabriel', 'Lima', 'gabriel.lima@email.com', 'Goiânia', 'Goiás'),
         ('Giovana', 'Costa', 'giovana.costa@email.com', 'Guarujá', 'São Paulo'),
         ('Gustavo', 'Oliveira', 'gustavo.oliveira@email.com', 'Gravataí', 'Rio Grande do Sul'),
         ('Glória', 'Alves', 'gloria.alves@email.com', 'Guarulhos', 'São Paulo'),
         ('Gisele', 'Pereira', 'gisele.pereira@email.com', 'Goiânia', 'Goiás'),
         ('Henrique', 'Santos', 'henrique.santos@email.com', 'Hortolândia', 'São Paulo'),
         ('Heloísa', 'Lima', 'heloisa.lima@email.com', 'Hidrolândia', 'Goiás'),
         ('Hugo', 'Oliveira', 'hugo.oliveira@email.com', 'Humaitá', 'Amazonas'),
         ('Helen', 'Costa', 'helen.costa@email.com', 'Holambra', 'São Paulo'),
         ('Heitor', 'Pereira', 'heitor.pereira@email.com', 'Hermenópolis', 'Minas Gerais'),
         ('Isabela', 'Silva', 'isabela.silva@email.com', 'Ipatinga', 'Minas Gerais'),
         ('Igor', 'Rocha', 'igor.rocha@email.com', 'Ipojuca', 'Pernambuco'),
         ('Ícaro', 'Costa', 'icaro.costa@email.com', 'Ilhéus', 'Bahia'),
         ('Isadora', 'Pereira', 'isadora.pereira@email.com', 'Indaiatuba', 'São Paulo'),
         ('Irene', 'Santos', 'irene.santos@email.com', 'Itaperuna', 'Rio de Janeiro'),
         ('João', 'Oliveira', 'joao.oliveira@email.com', 'João Pessoa', 'Paraíba'),
         ('Juliana', 'Costa', 'juliana.costa@email.com', 'Juiz de Fora', 'Minas Gerais'),
         ('José', 'Silva', 'jose.silva@email.com', 'Joinville', 'Santa Catarina'),
         ('Júlia', 'Souza', 'julia.souza@email.com', 'Jundiaí', 'São Paulo'),
         ('Jéssica', 'Pereira', 'jessica.pereira@email.com', 'Juazeiro', 'Bahia'),
         ('Karla', 'Lima', 'karla.lima@email.com', 'Kirituba', 'Rio Grande do Sul'),
         ('Kleber', 'Oliveira', 'kleber.oliveira@email.com', 'Kémen', 'Espírito Santo'),
         ('Kevin', 'Santos', 'kevin.santos@email.com', 'Katendê', 'Minas Gerais'),
         ('Kátia', 'Costa', 'katia.costa@email.com', 'Karatu', 'Sergipe'),
         ('Karla', 'Souza', 'karla.souza@email.com', 'Kanab', 'Goiás'),
         ('Lucas', 'Silva', 'lucas.silva@email.com', 'Londrina', 'Paraná'),
         ('Lívia', 'Costa', 'livia.costa@email.com', 'Luziânia', 'Goiás'),
         ('Laura', 'Pereira', 'laura.pereira@email.com', 'Lages', 'Santa Catarina'),
         ('Luan', 'Rocha', 'luan.rocha@email.com', 'Limeira', 'São Paulo'),
         ('Leandro', 'Souza', 'leandro.souza@email.com', 'Leme', 'São Paulo'),
         ('Maria', 'Silva', 'maria.silva@email.com', 'Manaus', 'Amazonas'),
         ('Mateus', 'Costa', 'mateus.costa@email.com', 'Maceió', 'Alagoas'),
         ('Marcela', 'Pereira', 'marcela.pereira@email.com', 'Maringá', 'Paraná'),
         ('Michel', 'Rocha', 'michel.rocha@email.com', 'Montes Claros', 'Minas Gerais'),
         ('Mário', 'Oliveira', 'mario.oliveira@email.com', 'Marília', 'São Paulo'),
         ('Nathalia', 'Souza', 'nathalia.souza@email.com', 'Niterói', 'Rio de Janeiro'),
         ('Nelson', 'Silva', 'nelson.silva@email.com', 'Natal', 'Rio Grande do Norte'),
         ('Natália', 'Lima', 'natalia.lima@email.com', 'Nova Iguaçu', 'Rio de Janeiro'),
         ('Nicolas', 'Santos', 'nicolas.santos@email.com', 'Nanuque', 'Minas Gerais'),
         ('Noemi', 'Rocha', 'noemi.rocha@email.com', 'Nova Friburgo', 'Rio de Janeiro'),
         ('Olga', 'Costa', 'olga.costa@email.com', 'Osasco', 'São Paulo'),
         ('Otávio', 'Oliveira', 'otavio.oliveira@email.com', 'Olinda', 'Pernambuco'),
         ('Olívio', 'Silva', 'olivio.silva@email.com', 'Ourinhos', 'São Paulo'),
         ('Orlando', 'Pereira', 'orlando.pereira@email.com', 'Oriximiná', 'Pará'),
         ('Omar', 'Santos', 'omar.santos@email.com', 'Osvaldo Cruz', 'São Paulo'),
         ('Paula', 'Souza', 'paula.souza@email.com', 'Porto Alegre', 'Rio Grande do Sul'),
         ('Pedro', 'Lima', 'pedro.lima@email.com', 'Paulista', 'Pernambuco'),
         ('Priscila', 'Costa', 'priscila.costa@email.com', 'Poços de Caldas', 'Minas Gerais'),
         ('Paulo', 'Silva', 'paulo.silva@email.com', 'Ponta Grossa', 'Paraná'),
         ('Patrícia', 'Rocha', 'patricia.rocha@email.com', 'Piracicaba', 'São Paulo'),
         ('Quésia', 'Almeida', 'quesia.almeida@email.com', 'Quixeramobim', 'Ceará'),
         ('Quirino', 'Costa', 'quirino.costa@email.com', 'Quixadá', 'Ceará'),
         ('Quezia', 'Pereira', 'quezia.pereira@email.com', 'Quilombo', 'Santa Catarina'),
         ('Quintino', 'Souza', 'quintino.souza@email.com', 'Quaraí', 'Rio Grande do Sul'),
         ('Quirina', 'Lima', 'quirina.lima@email.com', 'Querência', 'Mato Grosso'),
         ('Rafael', 'Rocha', 'rafael.rocha@email.com', 'Rio de Janeiro', 'Rio de Janeiro'),  
         ('Rita', 'Santos', 'rita.santos@email.com', 'Recife', 'Pernambuco'),  
         ('Ricardo', 'Costa', 'ricardo.costa@email.com', 'Ribeirão Preto', 'São Paulo'),  
         ('Rogério', 'Lima', 'rogerio.lima@email.com', 'Rio Claro', 'São Paulo'),  
         ('Renata', 'Pereira', 'renata.pereira@email.com', 'Rondonópolis', 'Mato Grosso'),  
         ('Samuel', 'Silva', 'samuel.silva@email.com', 'São Bernardo do Campo', 'São Paulo'),
         ('Sofia', 'Lima', 'sofia.lima@email.com', 'Salvador', 'Bahia'),  
         ('Sérgio', 'Costa', 'sergio.costa@email.com', 'Sorocaba', 'São Paulo'),  
         ('Suzana', 'Pereira', 'suzana.pereira@email.com', 'São Paulo', 'São Paulo'),  
         ('Silvana', 'Rocha', 'silvana.rocha@email.com', 'São José', 'Santa Catarina'),  
         ('Tatiane', 'Santos', 'tatiane.santos@email.com', 'Teresina', 'Piauí'),  
         ('Tiago', 'Pereira', 'tiago.pereira@email.com', 'Taubaté', 'São Paulo'),  
         ('Tânia', 'Lima', 'tania.lima@email.com', 'Tocantinópolis', 'Tocantins'),  
         ('Thales', 'Rocha', 'thales.rocha@email.com', 'Três Corações', 'Minas Gerais'),  
         ('Tadeu', 'Souza', 'tadeu.souza@email.com', 'Taguatinga', 'Distrito Federal'),  
         ('Ubirajara', 'Silva', 'ubirajara.silva@email.com', 'Ubatuba', 'São Paulo'),  
         ('Uliana', 'Costa', 'uliana.costa@email.com', 'União da Vitória', 'Paraná'),  
         ('Ugo', 'Lima', 'ugo.lima@email.com', 'Uberlândia', 'Minas Gerais'),  
         ('Uriel', 'Rocha', 'uriel.rocha@email.com', 'Uruçuí', 'Piauí'),  
         ('Uélio', 'Pereira', 'uelio.pereira@email.com', 'Umuarama', 'Paraná'),  
         ('Vinícius', 'Souza', 'vinicius.souza@email.com', 'Vitória', 'Espírito Santo'),  
         ('Verônica', 'Lima', 'veronica.lima@email.com', 'Várzea Grande', 'Mato Grosso'),  
         ('Vanderlei', 'Rocha', 'vanderlei.rocha@email.com', 'Volta Redonda', 'Rio de Janeiro'),  
         ('Valéria', 'Silva', 'valeria.silva@email.com', 'Vila Velha', 'Espírito Santo'),  
         ('Vitor', 'Pereira', 'vitor.pereira@email.com', 'Valinhos', 'São Paulo'),  
         ('Wilson', 'Costa', 'wilson.costa@email.com', 'Wenceslau Braz', 'São Paulo'),  
         ('Wagner', 'Pereira', 'wagner.pereira@email.com', 'Washington Luís', 'São Paulo'),  
         ('Wanessa', 'Lima', 'wanessa.lima@email.com', 'Waldir Pires', 'Bahia'),  
         ('William', 'Souza', 'william.souza@email.com', 'Windsor', 'Rio de Janeiro'),  
         ('Walter', 'Rocha', 'walter.rocha@email.com', 'Xinguara', 'Pará'),  
         ('Xuxa', 'Costa', 'xuxa.costa@email.com', 'Xanxerê', 'Santa Catarina'),  
         ('Xavier', 'Lima', 'xavier.lima@email.com', 'Xinguara', 'Pará'),  
         ('Xenon', 'Pereira', 'xenon.pereira@email.com', 'Xapuri', 'Acre'),  
         ('Xênia', 'Rocha', 'xenia.rocha@email.com', 'Xingu', 'Mato Grosso'),  
         ('Xander', 'Souza', 'xander.souza@email.com', 'Xerém', 'Rio de Janeiro'),  
         ('Yasmin', 'Pereira', 'yasmin.pereira@email.com', 'Ypiranga', 'Rio Grande do Sul'),  
         ('Yago', 'Costa', 'yago.costa@email.com', 'Yaguara', 'Minas Gerais'),  
         ('Yuri', 'Silva', 'yuri.silva@email.com', 'Ytacaranha', 'Bahia'),  
         ('Yara', 'Lima', 'yara.lima@email.com', 'Yakutinga', 'São Paulo'),  
         ('Yvone', 'Souza', 'yvone.souza@email.com', 'Ypiranga do Sul', 'Rio Grande do Sul'),  
         ('Zeca', 'Costa', 'zeca.costa@email.com', 'Zé Doca', 'Maranhão'),  
         ('Zilda', 'Silva', 'zilda.silva@email.com', 'Zona Sul', 'Rio de Janeiro'),  
         ('Zé', 'Pereira', 'ze.pereira@email.com', 'Zé Pimenta', 'Bahia'),  
         ('Zoe', 'Rocha', 'zoe.rocha@email.com', 'Zé de Sá', 'Maranhão'),  
         ('Zuleide', 'Souza', 'zuleide.souza@email.com', 'Zero', 'São Paulo');
         
INSERT INTO tbPedidos (id_usuario, data_pedido, status_pedido, total_pedido)  
VALUES   (1, '2024-01-10', 'Concluído', 599.99),  
         (2, '2024-02-14', 'Pendente', 799.99),  
         (3, '2024-03-01', 'Cancelado', 499.99),  
         (4, '2024-03-20', 'Concluído', 699.99),  
         (5, '2024-04-05', 'Concluído', 549.99),  
         (6, '2024-04-18', 'Pendente', 799.99),  
         (7, '2024-05-07', 'Concluído', 649.99),  
         (8, '2024-05-15', 'Cancelado', 599.99),  
         (9, '2024-06-02', 'Concluído', 499.99),  
         (10, '2024-06-10', 'Concluído', 699.99),  
         (11, '2024-06-20', 'Pendente', 749.99),  
         (12, '2024-07-03', 'Concluído', 599.99),  
         (13, '2024-07-12', 'Cancelado', 799.99),  
         (14, '2024-08-01', 'Concluído', 699.99),  
         (15, '2024-08-08', 'Pendente', 649.99),  
         (16, '2024-08-18', 'Concluído', 499.99),  
         (17, '2024-09-05', 'Cancelado', 749.99),  
         (18, '2024-09-15', 'Concluído', 599.99),  
         (19, '2024-10-01', 'Concluído', 799.99),  
         (20, '2024-10-10', 'Pendente', 549.99),  
         (21, '2024-10-20', 'Concluído', 649.99),  
         (22, '2024-11-03', 'Cancelado', 499.99),  
         (23, '2024-11-11', 'Concluído', 699.99),  
         (24, '2024-11-25', 'Concluído', 599.99),  
         (25, '2024-12-02', 'Pendente', 799.99),  
         (26, '2024-12-08', 'Concluído', 749.99),  
         (27, '2024-12-15', 'Cancelado', 649.99),  
         (28, '2024-12-20', 'Concluído', 499.99),  
         (29, '2024-12-25', 'Pendente', 599.99),  
         (30, '2024-12-30', 'Concluído', 549.99),  
         (31, '2025-01-05', 'Cancelado', 799.99),  
         (32, '2025-01-15', 'Concluído', 699.99),  
         (33, '2025-01-25', 'Pendente', 749.99),  
         (34, '2025-02-02', 'Concluído', 599.99),  
         (35, '2025-02-10', 'Cancelado', 649.99),  
         (35, '2024-12-16' , 'Em andamento', 159.99),
         (36, '2025-02-20', 'Concluído', 699.99),  
         (37, '2025-03-01', 'Pendente', 799.99),  
         (38, '2025-03-10', 'Concluído', 749.99),  
         (39, '2025-03-20', 'Cancelado', 599.99),  
         (40, '2025-03-25', 'Concluído', 549.99),  
         (41, '2025-04-01', 'Pendente', 649.99),  
         (42, '2025-04-10', 'Concluído', 799.99),  
         (43, '2025-04-20', 'Cancelado', 499.99),  
         (44, '2025-05-01', 'Concluído', 749.99),  
         (45, '2025-05-10', 'Pendente', 699.99),  
         (46, '2025-05-20', 'Concluído', 649.99),  
         (47, '2025-06-01', 'Cancelado', 599.99),  
         (48, '2025-06-10', 'Concluído', 799.99),  
         (49, '2025-06-20', 'Pendente', 499.99),  
         (50, '2025-07-01', 'Concluído', 749.99),
         (51, '2024-12-01', 'Em andamento', 120.50),
         (52, '2024-12-02', 'Concluído', 200.75),
         (53, '2024-12-03', 'Em andamento', 95.00),
         (54, '2024-12-04', 'Cancelado', 50.30),
         (55, '2024-12-05', 'Em andamento', 185.90),
         (56, '2024-12-06', 'Concluído', 215.40),
         (57, '2024-12-07', 'Em andamento', 320.20),
         (58, '2024-12-08', 'Cancelado', 130.80),
         (59, '2024-12-09', 'Em andamento', 99.99),
         (60, '2024-12-10', 'Concluído', 180.00),
         (61, '2024-12-11', 'Em andamento', 250.00),
         (62, '2024-12-12', 'Concluído', 300.75),
         (63, '2024-12-13', 'Cancelado', 110.60),
         (64, '2024-12-14', 'Em andamento', 420.00),
         (65, '2024-12-15', 'Concluído', 150.30),
         (66, '2024-12-16', 'Em andamento', 175.25),
         (67, '2024-12-17', 'Cancelado', 85.50),
         (68, '2024-12-18', 'Concluído', 275.90),
         (69, '2024-12-19', 'Em andamento', 225.10),
         (70, '2024-12-20', 'Concluído', 320.00),
         (71, '2024-12-21', 'Em andamento', 210.50),
         (72, '2024-12-22', 'Cancelado', 99.00),
         (73, '2024-12-23', 'Concluído', 160.75),
         (74, '2024-12-24', 'Em andamento', 245.60),
         (75, '2024-12-25', 'Cancelado', 120.00),
         (76, '2024-12-26', 'Em andamento', 195.20),
         (77, '2024-12-27', 'Concluído', 320.50),
         (78, '2024-12-28', 'Em andamento', 180.40),
         (79, '2024-12-29', 'Cancelado', 140.10),
         (80, '2024-12-30', 'Concluído', 210.20),
         (81, '2024-12-31', 'Em andamento', 170.00),
         (82, '2024-11-01', 'Concluído', 300.00),
         (83, '2024-11-02', 'Cancelado', 125.75),
         (84, '2024-11-03', 'Em andamento', 190.00),
         (85, '2024-11-04', 'Concluído', 250.25),
         (86, '2024-11-05', 'Cancelado', 99.50),
         (87, '2024-11-06', 'Em andamento', 215.90),
         (88, '2024-11-07', 'Concluído', 340.60),
         (89, '2024-11-08', 'Em andamento', 260.00),
         (90, '2024-11-09', 'Cancelado', 75.80),
         (91, '2024-11-10', 'Concluído', 195.10),
         (92, '2024-11-11', 'Em andamento', 230.30),
         (93, '2024-11-12', 'Cancelado', 115.40),
         (94, '2024-11-13', 'Em andamento', 265.75),
         (95, '2024-11-14', 'Concluído', 300.90),
         (96, '2024-11-15', 'Cancelado', 140.60),
         (97, '2024-11-16', 'Em andamento', 190.75),
         (98, '2024-11-17', 'Concluído', 225.20),
         (99, '2024-11-18', 'Em andamento', 310.50),
         (100, '2024-11-19', 'Cancelado', 155.30),
         (101, '2024-11-20', 'Em andamento', 180.20),
         (102, '2024-11-21', 'Concluído', 215.50),
         (103, '2024-11-22', 'Cancelado', 99.40),
         (104, '2024-11-23', 'Em andamento', 210.60),
         (105, '2024-11-24', 'Concluído', 230.30),
         (106, '2024-11-25', 'Em andamento', 145.00),
         (107, '2024-11-26', 'Cancelado', 120.00),
         (108, '2024-11-27', 'Concluído', 185.90),
         (109, '2024-11-28', 'Em andamento', 240.25),
         (110, '2024-11-29', 'Concluído', 320.40),
         (111, '2024-11-30', 'Cancelado', 210.50),
         (112, '2024-12-01', 'Em andamento', 180.00),
         (113, '2024-12-02', 'Concluído', 300.20),
         (114, '2024-12-03', 'Em andamento', 190.50),
         (115, '2024-12-04', 'Cancelado', 95.00),
         (116, '2024-12-05', 'Concluído', 270.40),
         (117, '2024-12-06', 'Em andamento', 130.60),
         (118, '2024-12-07', 'Cancelado', 100.80),
         (119, '2024-12-08', 'Concluído', 250.75),
         (120, '2024-12-09', 'Em andamento', 210.30),
         (121, '2024-12-10', 'Cancelado', 150.40),
         (122, '2024-12-11', 'Em andamento', 290.00),
         (123, '2024-12-12', 'Concluído', 380.60),
         (124, '2024-12-13', 'Em andamento', 175.30),
         (125, '2024-12-14', 'Concluído', 145.50),
         (126, '2024-12-15', 'Em andamento', 220.80),
         (127, '2024-12-16', 'Cancelado', 185.20),
         (128, '2024-12-17', 'Concluído', 280.00),
         (129, '2024-12-18', 'Em andamento', 250.60),
         (130, '2024-12-19', 'Cancelado', 170.30);

INSERT INTO tbComentarios (id_usuario, data_comentario, conteudo_comentario)
VALUES  (1, '2024-12-10', 'Produto excelente, ajudou muito na irrigação automática.'),
        (2, '2024-12-11', 'A entrega foi rápida, recomendo o sistema AquaPulse.'),
        (3, '2024-12-12', 'Tive um problema com a configuração inicial, mas o suporte foi muito atencioso.'),
        (4, '2024-12-13', 'Preço justo pela qualidade do produto.'),
        (5, '2024-12-14', 'Estou satisfeito com o desempenho do sistema, muito eficiente!');

INSERT INTO tbMensagensSuporte (id_usuario, data_mensagem, conteudo_mensagem)
VALUES  (1, '2024-12-01', 'Como configurar o sistema para irrigar em horários diferentes?'),
        (2, '2024-12-02', 'O produto chegou com uma peça faltando, como proceder?'),
        (3, '2024-12-03', 'Posso usar o sistema em uma plantação maior que 2 hectares?'),
        (4, '2024-12-05', 'Quais são as condições para a garantia do produto?'),
        (5, '2024-12-07', 'O suporte técnico pode ajudar na instalação inicial?');
       
INSERT INTO tbProdutos (nome_produto, descricao_produto, preco_produto, estoque_produto) 
VALUES  ('Sensor de Umidade', 'Sensor para medir a umidade do solo, ideal para irrigação automática.', 49.90, 200),
        ('Válvula Solenoide', 'Válvula para controle do fluxo de água em sistemas de irrigação.', 89.90, 150),
        ('Controlador Arduino', 'Placa Arduino para automação de sistemas de irrigação.', 199.90, 100);
       
INSERT INTO tbCategorias (nome_categoria, descricao_categoria) 
VALUES  ('Sensores', 'Dispositivos para monitoramento de condições do solo.'),
        ('Válvulas', 'Equipamentos para controle do fluxo de água.'),
        ('Controladores', 'Placas e dispositivos para automação.');
       
INSERT INTO tbEnderecos (id_usuario, endereco, cidade, estado, cep) 
VALUES  (1, 'Rua A, 123', 'São Paulo', 'SP', '01000-000'),
        (2, 'Avenida B, 456', 'Rio de Janeiro', 'RJ', '20000-000'),
        (3, 'Praça C, 789', 'Belo Horizonte', 'MG', '30000-000');

INSERT INTO tbPagamentos (id_pedido, data_pagamento, valor_pagamento, metodo_pagamento, status_pagamento) 
VALUES  (1, '2023-10-01', 139.80, 'Cartão de Crédito', 'Aprovado'),
        (2, '2023-10-02', 199.90, 'Boleto', 'Aprovado'),
        (3, '2023-10-03', 49.90, 'Cartão de Débito', 'Cancelado');

-- Seleciona algumas informações dos administradores
SELECT nome_adm, sobrenome_adm, cargo_adm 
FROM tbAdministradores;

-- Seleciona os usuarios que moram em São Paulo
SELECT nome_usuario AS "Clientes de São Paulo"
FROM tbUsuarios
WHERE estado_usuario = 'São Paulo';

-- Seleciona tudo sobre a tabela e pedido e tabela usuario quando o email = 'andre.silva@email.com'
SELECT * 
FROM tbPedidos, tbUsuarios
WHERE email_usuario = 'andre.silva@email.com' AND
tbUsuarios.id_usuario = tbPedidos.id_usuario;

-- Seleciona o id do pedido, o nome do usuario e o totaldo preço, de todos os pedidos com status pendente
SELECT id_pedido, nome_usuario, total_pedido
FROM tbPedidos
INNER JOIN tbUsuarios ON tbUsuarios.id_usuario = tbPedidos.id_usuario
WHERE tbPedidos.status_pedido = 'Pendente';

-- Seleciona o nome do usuario, a quantidade de pedidos e o total gasto
SELECT u.nome_usuario, COUNT(p.id_pedido) AS total_pedidos, SUM(p.total_pedido) AS total_gasto
FROM tbUsuarios u
INNER JOIN tbPedidos p ON u.id_usuario = p.id_usuario
GROUP BY u.id_usuario;

-- Seleciona o usuario com o maior número de pedidos
SELECT nome_usuario, COUNT(id_pedido) AS Total_Pedidos
FROM tbUsuarios u
INNER JOIN tbPedidos p ON u.id_usuario = p.id_usuario
GROUP BY u.id_usuario
ORDER BY Total_Pedidos
LIMIT 1;

-- Seleciona todos os pedidos que forma cancelados
SELECT nome_usuario, p.id_pedido, p.data_pedido
FROM tbUsuarios u
INNER JOIN tbPedidos p ON u.id_usuario = p.id_usuario
WHERE p.status_pedido = 'cancelado';

-- Seleciona o usuarios e os seus pedidos
SELECT nome_usuario, p.id_pedido, p.status_pedido
FROM tbUsuarios u
INNER JOIN tbPedidos p ON u.id_usuario = p.id_usuario;

-- selecioan todos os administradores com cargo de freelancer
SELECT nome_adm
FROM tbAdministradores
WHERE cargo_adm = 'freelancer';

-- seleciona todos os usuarios que tiveram o pedido Concluido
SELECT nome_usuario
FROM tbUsuarios, tbPedidos
WHERE status_pedido = 'Concluído' AND
tbUsuarios.id_usuario = tbPedidos.id_usuario;
