#pip install cryptography

from cryptography.fernet import Fernet

# Função para gerar uma chave de criptografia
def gerar_chave():
    chave = Fernet.generate_key()
    with open("chave.key", "wb") as chave_arquivo:
        chave_arquivo.write(chave)
    return chave

# Função para carregar a chave de criptografia
def carregar_chave():
    return open("chave.key", "rb").read()

# Função para criptografar as senhas
def criptografar_senhas(senhas, chave):
    fernet = Fernet(chave)
    senhas_criptografadas = []
    for senha in senhas:
        senha_criptografada = fernet.encrypt(senha.encode())
        senhas_criptografadas.append(senha_criptografada)
    return senhas_criptografadas

# Lista de senhas
senhas = [
    "4Jq92#hX", "cT4r9!dL", "aYp%Z7vS", "w2K#o3eF", "Bz7t@CwA", "X5j!wQ9L", 
    "dN8yH$z2", "vR4p#kQX", "jS9z@A2m", "2Pq$1mL8", "R9h&fT5z", "Gs7$F3yR", 
    "Z4jY#2pX", "kW6s$h9B", "oT2gV!z8", "LzQ3d#oP", "vF4pG!rJ", "6Yr9Wb3K", 
    "nD7oF#eX", "C2y#5vHk", "wJ4u*L7b", "h3Kp$8zX", "dJ5qY2R#", "mS8p#oZ3", 
    "A1wX9!bK", "Fz7cR$8o", "Xq9dB!4Y", "pF2g@5kZ", "bK4s!h8N", "TjY6b#9v", 
    "V3r$7mTQ", "nL5s@rX2", "dZ9gF!8W", "W3yXh#1b", "T8dYg2$z", "rC5jV&7L", 
    "Gs4o#8pQ", "h7M2v9P#", "Y1gR5L!u", "kXqT4d@o", "Z9s!yX5b", "pF4Wq@9L", 
    "cB8zT2mH", "mS1R$y7p", "N2hT9#jD", "dF3qV!Y4", "5KwXb@hL", "W6jHq!z1", 
    "pY7t#8dR", "rL5sV@Z3", "jM8hT4Kq", "Z3bX9!oF", "dN6rH#1Y", "cQ2yT7bV", 
    "V9kX$3hR", "pZ5uJr#4", "oF1bD8gL", "W6yR2mX#", "tJ3kP@7z", "nL8fQ5cY", 
    "J9pF@b2W", "vX1K7rT!", "wZ4jY3tP", "hD2L9kV#", "T5oFq@1Y", "G7mN4rX!", 
    "bJ8tP@zL", "6sK9yF3b", "pV2gR7@o", "Y4hN#8Tz", "C3pL9xB!", "D5rX1zV", 
    "K7jT2mQ#", "vB3f9L4Y", "G8qR2tZ#", "dX1hV4!r", "S9pY@7J", "tM5dV3#z", 
    "F4kY1bP", "j2rQ7Lx!", "wK5Tz9yR", "N1pG!L8X", "3bFvK6tQ", "vX9yL2J!", 
    "pD1r5Z7#", "tY8wM3vQ", "J4bXy1F!", "L9pK6m2T", "D7rB#5V", "Z3hQ1yJ!", 
    "mX9Fq2R#", "T8kY4oZ!", "G2bQ9L6F", "pV3fT8yR", "h1XJ9k5L", "wR4bV7!z", 
    "Y2kF9rT#", "D3vH6gB", "K4pX2t!L", "j7rV1zQ#", "N9bF5Tz", "G6pY2rL!", 
    "T3xY8kQ#", "F1wV7bN", "pQ9zL2r!", "vX4kG8b", "mT2pR6J#", "h5V9yX1F", 
    "L7bT3rQ!", "J2oV8tY#", "W6kZ5bQ", "R9pY3L2T", "T4hQ7mV#", "F8pY1L9k", 
    "zD3mX2Q#", "K5rV7pB!", "G1yX8bR", "T4bY9oQ!", "wZ3kD7m", "F5pX2rL#", 
    "1QyT7vJ!", "G2pV6tR#", "mX9F4bY", "Z5rD1V!", "L8jR9kT", "T3bX2yF#", 
    "7pQ9R1L", "G2kT6vR#", "J8tF4bL!", "Y3rV5pX"
]

# Gerar chave de criptografia
chave = gerar_chave()

# Criptografar as senhas
senhas_criptografadas = criptografar_senhas(senhas, chave)

# Exibir as senhas criptografadas
for senha_criptografada in senhas_criptografadas:
    print(senha_criptografada.decode())

