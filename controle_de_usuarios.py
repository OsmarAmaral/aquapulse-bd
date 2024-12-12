# controle de usuarios

nomes = []
senhas = []
emails = []

def criar_conta (nome, senha, email):
    nomes.append(nome)
    senhas.append(senha)
    emails.append(email)

def entrar_na_conta(email):
    if email in emails:
        print("conta existente !")
    else:
        print("está conta não existe")
    
    
# desenvolvimento
# não mexer

slc = 0
while slc != 9:
    print("-----Menu-----")
    print("1. sing in")
    print("2. sing up")
    print("3. exit")
    slc = int(input("select: "))
    match slc:
        case 1:
            email = input("digite seu email: ")
            print(entrar_na_conta(email))
        case 2:
            print("seja bem-vindo")
            nome = input("digite seu nome: ")
            senha = input("digite sua senha: ")
            email = input("digite seu email: ")
            print(criar_conta(nome, senha, email))
        case 3:
            print("sucesso!")
        case 8:
            print(nomes)
            print(senhas)
        case _:
            print("undefined")
        
