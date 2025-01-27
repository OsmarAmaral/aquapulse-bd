-- AquaPulse - Sistema de irrigação automática

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
  estado_usuario VARCHAR(255),
  ava_usuario BOOLEAN
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
