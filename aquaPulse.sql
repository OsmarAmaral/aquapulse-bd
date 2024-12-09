-- AquaPulse - Sistema de irrigação automática

CREATE TABLE tbAdministradores (
  id_adm SERIAL PRIMARY KEY,
  nome_adm VARCHAR(100),
  sobrenome_adm VARCHAR(100),
  email_adm VARCHAR(100),
  cargo_adm VARCHAR(100)
);

CREATE TABLE tbUsuarios (
  id_usuario SERIAL PRIMARY KEY,
  nome_usuario VARCHAR(100),
  sobrenome_usuario VARCHAR(100),
  email_usuario VARCHAR(255),
  cidade_usuario VARCHAR(255),
  estado_usuario VARCHAR(255)
);

