-- AquaPulse - Sistema de irrigação automática

CREATE TABLE tbAdministradores (
  id_adm SERIAL PRIMARY KEY,
  nome_adm VARCHAR(100),
  sobrenome_adm VARCHAR(100),
  email_adm VARCHAR(100) UNIQUE,
  cargo_adm VARCHAR(100)
);

CREATE TABLE tbUsuarios (
  id_usuario SERIAL PRIMARY KEY,
  nome_usuario VARCHAR(100),
  sobrenome_usuario VARCHAR(100),
  email_usuario VARCHAR(255) UNIQUE,
  cidade_usuario VARCHAR(255),
  estado_usuario VARCHAR(255)
);

INSERT INTO tbAdministradores (nome_adm, sobrenome_adm, email_adm, cargo_adm)
  VALUES ('Osmar', 'Araujo', 'osmar@gmail.com', 'chefe'),
         ('Iago', 'Bortoluzzi', 'iago1@gmail.com', 'chefe'),
         ('Pedro', 'Alves', 'pedro@gmail.com', 'estagiario'),
         ('Iago', 'Paiva', 'iago2@gmail.com', 'estagiario');
         
INSERT INTO tbUsuarios (nome_usuario, sobrenome_usuario, email_usuario, cidade_usuario, estado_usuario)
  VALUES ('Ana', 'Lima', 'ana.lima@email.com', 'Aracaju', 'Sergipe'),
         ('André', 'Silva', 'andre.silva@email.com', 'Aparecida de Goiânia', 'Goiás');

UPDATE tbAdministradores
SET email_adm = 'osmar.s@estudante.ifmt.edu.br'
WHERE nome_adm = 'Osmar' AND sobrenome_adm = 'Araujo';

UPDATE tbAdministradores
SET cargo_adm = 'Tech Lead'
WHERE nome_adm = 'Osmar' AND sobrenome_adm = 'Araujo';

UPDATE tbAdministradores
SET email_adm = 'iagogabriel9710@gmail.com'
WHERE nome_adm = 'Iago' AND sobrenome_adm = 'Bortoluzzi';

SELECT *
FROM tbAdministradores
