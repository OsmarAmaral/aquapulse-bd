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
         
/* INSERT INTO tbUsuarios (nome_usuario, sobrenome_usuario, email_usuario, cidade_usuario, estado_usuario)
  VALUES ('Ana', 'Lima', 'ana.lima@email.com', 'Aracaju', 'Sergipe'),
         ('André', 'Silva', 'andre.silva@email.com', 'Aparecida de Goiânia', 'Goiás'); */

INSERT INTO tbUsuarios (nome_usuario, sobrenome_usuario, email_usuario, cidade_usuario, estado_usuario)
  VALUES -- A
        ('Ana', 'Lima', 'ana.lima@email.com', 'Aracaju', 'Sergipe'),
        ('André', 'Silva', 'andre.silva@email.com', 'Aparecida de Goiânia', 'Goiás'),
        ('Amanda', 'Oliveira', 'amanda.oliveira@email.com', 'Anápolis', 'Goiás'),
        ('Alex', 'Souza', 'alex.souza@email.com', 'Alagoinhas', 'Bahia'),
        ('Arthur', 'Costa', 'arthur.costa@email.com', 'Amparo', 'São Paulo'),
        
        -- B
        ('Bruna', 'Martins', 'bruna.martins@email.com', 'Belo Horizonte', 'Minas Gerais'),
        ('Bruno', 'Pereira', 'bruno.pereira@email.com', 'Barbacena', 'Minas Gerais'),
        ('Bianca', 'Rocha', 'bianca.rocha@email.com', 'Brasília', 'Distrito Federal'),
        ('Bárbara', 'Ferreira', 'barbara.ferreira@email.com', 'Bauru', 'São Paulo'),
        ('Benjamin', 'Santos', 'benjamin.santos@email.com', 'Belém', 'Pará'),
        
        -- C
        ('Carlos', 'Mendes', 'carlos.mendes@email.com', 'Campinas', 'São Paulo'),
        ('Camila', 'Souza', 'camila.souza@email.com', 'Curitiba', 'Paraná'),
        ('Cecília', 'Lima', 'cecilia.lima@email.com', 'Caxias do Sul', 'Rio Grande do Sul'),                                   
        ('Caio', 'Alves', 'caio.alves@email.com', 'Cuiabá', 'Mato Grosso'),                         
        ('Cristina', 'Costa', 'cristina.costa@email.com', 'Campos dos Goytacazes', 'Rio de Janeiro'),

        -- D
        ('Daniel', 'Silva', 'daniel.silva@email.com', 'Duque de Caxias', 'Rio de Janeiro'),
        ('Débora', 'Oliveira', 'debora.oliveira@email.com', 'Delmiro Gouveia', 'Alagoas'),
        ('David', 'Rodrigues', 'david.rodrigues@email.com', 'Dourados', 'Mato Grosso do Sul'),
        ('Daniele', 'Pereira', 'daniele.pereira@email.com', 'Divinópolis', 'Minas Gerais'),
        ('Douglas', 'Santos', 'douglas.santos@email.com', 'Diadema', 'São Paulo'),

        -- E
        ('Eduardo', 'Costa', 'eduardo.costa@email.com', 'Espírito Santo do Pinhal', 'São Paulo'),
        ('Eliane', 'Martins', 'eliane.martins@email.com', 'Estância', 'Sergipe'),
        ('Emília', 'Gomes', 'emilia.gomes@email.com', 'Embu das Artes', 'São Paulo'),
        ('Enzo', 'Silva', 'enzo.silva@email.com', 'Eusébio', 'Ceará'),
        ('Evelyn', 'Souza', 'evelyn.souza@email.com', 'Embu-Guaçu', 'São Paulo'),

        -- F
        ('Fabiana', 'Rocha', 'fabiana.rocha@email.com', 'Fortaleza', 'Ceará'),
        ('Felipe', 'Pereira', 'felipe.pereira@email.com', 'Florianópolis', 'Santa Catarina'),
        ('Fábio', 'Alves', 'fabio.alves@email.com', 'Foz do Iguaçu', 'Paraná'),
        ('Fernanda', 'Souza', 'fernanda.souza@email.com', 'Franca', 'São Paulo'),
        ('Francisco', 'Santos', 'francisco.santos@email.com', 'Feira de Santana', 'Bahia'),

        -- G
        ('Gabriel', 'Lima', 'gabriel.lima@email.com', 'Goiânia', 'Goiás'),
        ('Giovana', 'Costa', 'giovana.costa@email.com', 'Guarujá', 'São Paulo'),
        ('Gustavo', 'Oliveira', 'gustavo.oliveira@email.com', 'Gravataí', 'Rio Grande do Sul'),
        ('Glória', 'Alves', 'gloria.alves@email.com', 'Guarulhos', 'São Paulo'),
        ('Gisele', 'Pereira', 'gisele.pereira@email.com', 'Goiânia', 'Goiás'),

        -- H
        ('Henrique', 'Santos', 'henrique.santos@email.com', 'Hortolândia', 'São Paulo'),
        ('Heloísa', 'Lima', 'heloisa.lima@email.com', 'Hidrolândia', 'Goiás'),
        ('Hugo', 'Oliveira', 'hugo.oliveira@email.com', 'Humaitá', 'Amazonas'),
        ('Helen', 'Costa', 'helen.costa@email.com', 'Holambra', 'São Paulo'),
        ('Heitor', 'Pereira', 'heitor.pereira@email.com', 'Hermenópolis', 'Minas Gerais'),

        -- I
        ('Isabela', 'Silva', 'isabela.silva@email.com', 'Ipatinga', 'Minas Gerais'),
        ('Igor', 'Rocha', 'igor.rocha@email.com', 'Ipojuca', 'Pernambuco'),
        ('Ícaro', 'Costa', 'icaro.costa@email.com', 'Ilhéus', 'Bahia'),
        ('Isadora', 'Pereira', 'isadora.pereira@email.com', 'Indaiatuba', 'São Paulo'),
        ('Irene', 'Santos', 'irene.santos@email.com', 'Itaperuna', 'Rio de Janeiro'),

        -- J
        ('João', 'Oliveira', 'joao.oliveira@email.com', 'João Pessoa', 'Paraíba'),
        ('Juliana', 'Costa', 'juliana.costa@email.com', 'Juiz de Fora', 'Minas Gerais'),
        ('José', 'Silva', 'jose.silva@email.com', 'Joinville', 'Santa Catarina'),
        ('Júlia', 'Souza', 'julia.souza@email.com', 'Jundiaí', 'São Paulo'),
        ('Jéssica', 'Pereira', 'jessica.pereira@email.com', 'Juazeiro', 'Bahia'),

        -- K
        ('Karla', 'Lima', 'karla.lima@email.com', 'Kirituba', 'Rio Grande do Sul'),
        ('Kleber', 'Oliveira', 'kleber.oliveira@email.com', 'Kémen', 'Espírito Santo'),
        ('Kevin', 'Santos', 'kevin.santos@email.com', 'Katendê', 'Minas Gerais'),
        ('Kátia', 'Costa', 'katia.costa@email.com', 'Karatu', 'Sergipe'),
        ('Karla', 'Souza', 'karla.souza@email.com', 'Kanab', 'Goiás'),

        -- L
        ('Lucas', 'Silva', 'lucas.silva@email.com', 'Londrina', 'Paraná'),
        ('Lívia', 'Costa', 'livia.costa@email.com', 'Luziânia', 'Goiás'),
        ('Laura', 'Pereira', 'laura.pereira@email.com', 'Lages', 'Santa Catarina'),
        ('Luan', 'Rocha', 'luan.rocha@email.com', 'Limeira', 'São Paulo'),
        ('Leandro', 'Souza', 'leandro.souza@email.com', 'Leme', 'São Paulo'),
        
        -- M
        ('Maria', 'Silva', 'maria.silva@email.com', 'Manaus', 'Amazonas'),
        ('Mateus', 'Costa', 'mateus.costa@email.com', 'Maceió', 'Alagoas'),
        ('Marcela', 'Pereira', 'marcela.pereira@email.com', 'Maringá', 'Paraná'),
        ('Michel', 'Rocha', 'michel.rocha@email.com', 'Montes Claros', 'Minas Gerais'),
        ('Mário', 'Oliveira', 'mario.oliveira@email.com', 'Marília', 'São Paulo'),

        -- N
        ('Nathalia', 'Souza', 'nathalia.souza@email.com', 'Niterói', 'Rio de Janeiro'),
        ('Nelson', 'Silva', 'nelson.silva@email.com', 'Natal', 'Rio Grande do Norte'),
        ('Natália', 'Lima', 'natalia.lima@email.com', 'Nova Iguaçu', 'Rio de Janeiro'),
        ('Nicolas', 'Santos', 'nicolas.santos@email.com', 'Nanuque', 'Minas Gerais'),
        ('Noemi', 'Rocha', 'noemi.rocha@email.com', 'Nova Friburgo', 'Rio de Janeiro'),

        -- O
        ('Olga', 'Costa', 'olga.costa@email.com', 'Osasco', 'São Paulo'),
        ('Otávio', 'Oliveira', 'otavio.oliveira@email.com', 'Olinda', 'Pernambuco'),
        ('Olívio', 'Silva', 'olivio.silva@email.com', 'Ourinhos', 'São Paulo'),
        ('Orlando', 'Pereira', 'orlando.pereira@email.com', 'Oriximiná', 'Pará'),
        ('Omar', 'Santos', 'omar.santos@email.com', 'Osvaldo Cruz', 'São Paulo'),

        -- P
        ('Paula', 'Souza', 'paula.souza@email.com', 'Porto Alegre', 'Rio Grande do Sul'),
        ('Pedro', 'Lima', 'pedro.lima@email.com', 'Paulista', 'Pernambuco'),
        ('Priscila', 'Costa', 'priscila.costa@email.com', 'Poços de Caldas', 'Minas Gerais'),
        ('Paulo', 'Silva', 'paulo.silva@email.com', 'Ponta Grossa', 'Paraná'),
        ('Patrícia', 'Rocha', 'patricia.rocha@email.com', 'Piracicaba', 'São Paulo'),

        -- Q
        ('Quésia', 'Almeida', 'quesia.almeida@email.com', 'Quixeramobim', 'Ceará'),
        ('Quirino', 'Costa', 'quirino.costa@email.com', 'Quixadá', 'Ceará'),
        ('Quezia', 'Pereira', 'quezia.pereira@email.com', 'Quilombo', 'Santa Catarina'),
        ('Quintino', 'Souza', 'quintino.souza@email.com', 'Quaraí', 'Rio Grande do Sul'),
        ('Quirina', 'Lima', 'quirina.lima@email.com', 'Querência', 'Mato Grosso'),

        -- R
        ('Rafael', 'Rocha', 'rafael.rocha@email.com', 'Rio de Janeiro', 'Rio de Janeiro'),  
        ('Rita', 'Santos', 'rita.santos@email.com', 'Recife', 'Pernambuco'),  
        ('Ricardo', 'Costa', 'ricardo.costa@email.com', 'Ribeirão Preto', 'São Paulo'),  
        ('Rogério', 'Lima', 'rogerio.lima@email.com', 'Rio Claro', 'São Paulo'),  
        ('Renata', 'Pereira', 'renata.pereira@email.com', 'Rondonópolis', 'Mato Grosso'),  

        -- S
        ('Samuel', 'Silva', 'samuel.silva@email.com', 'São Bernardo do Campo', 'São Paulo'),
        ('Sofia', 'Lima', 'sofia.lima@email.com', 'Salvador', 'Bahia'),  
        ('Sérgio', 'Costa', 'sergio.costa@email.com', 'Sorocaba', 'São Paulo'),  
        ('Suzana', 'Pereira', 'suzana.pereira@email.com', 'São Paulo', 'São Paulo'),  
        ('Silvana', 'Rocha', 'silvana.rocha@email.com', 'São José', 'Santa Catarina'),  

        -- T
        ('Tatiane', 'Santos', 'tatiane.santos@email.com', 'Teresina', 'Piauí'),  
        ('Tiago', 'Pereira', 'tiago.pereira@email.com', 'Taubaté', 'São Paulo'),  
        ('Tânia', 'Lima', 'tania.lima@email.com', 'Tocantinópolis', 'Tocantins'),  
        ('Thales', 'Rocha', 'thales.rocha@email.com', 'Três Corações', 'Minas Gerais'),  
        ('Tadeu', 'Souza', 'tadeu.souza@email.com', 'Taguatinga', 'Distrito Federal'),  

        -- U
        ('Ubirajara', 'Silva', 'ubirajara.silva@email.com', 'Ubatuba', 'São Paulo'),  
        ('Uliana', 'Costa', 'uliana.costa@email.com', 'União da Vitória', 'Paraná'),  
        ('Ugo', 'Lima', 'ugo.lima@email.com', 'Uberlândia', 'Minas Gerais'),  
        ('Uriel', 'Rocha', 'uriel.rocha@email.com', 'Uruçuí', 'Piauí'),  
        ('Uélio', 'Pereira', 'uelio.pereira@email.com', 'Umuarama', 'Paraná'),  

        -- V
        ('Vinícius', 'Souza', 'vinicius.souza@email.com', 'Vitória', 'Espírito Santo'),  
        ('Verônica', 'Lima', 'veronica.lima@email.com', 'Várzea Grande', 'Mato Grosso'),  
        ('Vanderlei', 'Rocha', 'vanderlei.rocha@email.com', 'Volta Redonda', 'Rio de Janeiro'),  
        ('Valéria', 'Silva', 'valeria.silva@email.com', 'Vila Velha', 'Espírito Santo'),  
        ('Vitor', 'Pereira', 'vitor.pereira@email.com', 'Valinhos', 'São Paulo'),  

        -- W
        ('Wilson', 'Costa', 'wilson.costa@email.com', 'Wenceslau Braz', 'São Paulo'),  
        ('Wagner', 'Pereira', 'wagner.pereira@email.com', 'Washington Luís', 'São Paulo'),  
        ('Wanessa', 'Lima', 'wanessa.lima@email.com', 'Waldir Pires', 'Bahia'),  
        ('William', 'Souza', 'william.souza@email.com', 'Windsor', 'Rio de Janeiro'),  
        ('Walter', 'Rocha', 'walter.rocha@email.com', 'Xinguara', 'Pará'),  

        -- X
        ('Xuxa', 'Costa', 'xuxa.costa@email.com', 'Xanxerê', 'Santa Catarina'),  
        ('Xavier', 'Lima', 'xavier.lima@email.com', 'Xinguara', 'Pará'),  
        ('Xenon', 'Pereira', 'xenon.pereira@email.com', 'Xapuri', 'Acre'),  
        ('Xênia', 'Rocha', 'xenia.rocha@email.com', 'Xingu', 'Mato Grosso'),  
        ('Xander', 'Souza', 'xander.souza@email.com', 'Xerém', 'Rio de Janeiro'),  

        -- Y
        ('Yasmin', 'Pereira', 'yasmin.pereira@email.com', 'Ypiranga', 'Rio Grande do Sul'),  
        ('Yago', 'Costa', 'yago.costa@email.com', 'Yaguara', 'Minas Gerais'),  
        ('Yuri', 'Silva', 'yuri.silva@email.com', 'Ytacaranha', 'Bahia'),  
        ('Yara', 'Lima', 'yara.lima@email.com', 'Yakutinga', 'São Paulo'),  
        ('Yvone', 'Souza', 'yvone.souza@email.com', 'Ypiranga do Sul', 'Rio Grande do Sul'),  

        -- Z
        ('Zeca', 'Costa', 'zeca.costa@email.com', 'Zé Doca', 'Maranhão'),  
        ('Zilda', 'Silva', 'zilda.silva@email.com', 'Zona Sul', 'Rio de Janeiro'),  
        ('Zé', 'Pereira', 'ze.pereira@email.com', 'Zé Pimenta', 'Bahia'),  
        ('Zoe', 'Rocha', 'zoe.rocha@email.com', 'Zé de Sá', 'Maranhão'),  
        ('Zuleide', 'Souza', 'zuleide.souza@email.com', 'Zero', 'São Paulo');  

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
