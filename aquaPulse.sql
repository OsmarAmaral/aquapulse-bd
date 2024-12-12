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

INSERT INTO tbAdministradores (nome_adm, sobrenome_adm, email_adm, cargo_adm)
  VALUES ('Osmar', 'Araujo', 'osmar@gmail.com', 'chefe'),
         ('Iago', 'Bortoluzzi', 'iago@gmail.com', 'chefe'),
         ('Pedro', 'Alves', 'pedro@gmail.com', 'estagiario'),
         ('Iago', 'Paiva', 'iago@gmail.com', 'estagiario');
         
INSERT INTO tbUsuarios (nome_usuario, sobrenome_usuario, email_usuario, cidade_usuario, estado_usuario)
  VALUES ('Leonardo', 'Ferreira', 'leonardo@gmail.com', 'Rondonópolis', 'MT');
  
  select *
  from tbAdministradores
