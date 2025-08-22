
local alunos = {}


local function cadastrarAluno()
    print("Digite o nome do aluno:")
    local nome = io.read() 
    print("Digite a idade do aluno:")
    local idade = tonumber(io.read()) 
    print("Digite a matrícula do aluno:")
    local matricula = io.read()  

  
    local aluno = {
        nome = nome,
        idade = idade,
        matricula = matricula,
    }


    table.insert(alunos, aluno)
    print("Aluno cadastrado com sucesso!\n")
end


local function exibirAlunos()
    if #alunos == 0 then
        print("Nenhum aluno cadastrado.\n")
    else
        print("Lista de alunos cadastrados:")
        for i, aluno in ipairs(alunos) do
            print(string.format("Aluno %d: %s, Idade: %d, Matrícula: %s", 
            i, aluno.nome, aluno.idade, aluno.matricula))
        end
    end
end


local function menu()
    print("Escolha uma opção:")
    print("1. Cadastrar aluno")
    print("2. Exibir alunos")
    print("3. Sair")
end


local function sistemaCadastro()
    while true do
        menu()
        local opcao = tonumber(io.read()) 

        if opcao == 1 then
            cadastrarAluno()  
        elseif opcao == 2 then
            exibirAlunos()  
        elseif opcao == 3 then
            print("Saindo do sistema de cadastro...")
            break  
        else
            print("Opção inválida. Tente novamente.\n")
        end
    end
end


sistemaCadastro()
