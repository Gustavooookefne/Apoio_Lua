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

local function calcularMedia(a, b, c)
    return (a + b + c) / 3
end

-- Função que exibe o resultado
local function mostrarResultado(nome, media)
    print(nome .. " - Media: " .. string.format("%.2f \n", media))

    if media >= 7 then
        print(nome .. " foi aprovado!" .. "\n")
    else
        print(nome .. " foi reprovado!" .. "\n")
    end
end

local function lerNotasAluno()
    -- Escolha o aluno para calcular a média
    print("Escolha o aluno pelo número:")
    exibirAlunos()
    local indice = tonumber(io.read()) -- Obtém o índice do aluno
    local aluno = alunos[indice]
    
    if aluno then
        print("Digite as 3 notas de " .. aluno.nome .. "\n")
        io.write("Nota 1: ")
        local nota1 = tonumber(io.read())
        io.write("Nota 2: ")
        local nota2 = tonumber(io.read())
        io.write("Nota 3: " .. "\n")
        local nota3 = tonumber(io.read())

        local media = calcularMedia(nota1, nota2, nota3)
        mostrarResultado(aluno.nome, media)
    else
        print("Aluno nao encontrado. Tente novamente.\n")
    end
end

print("Calculadora de notas de alunos " .. "\n")

local function menu()
    print("Escolha uma opcao:")
    print("1. Cadastrar aluno")
    print("2. Exibir alunos")
    print("3. Calcular media de um aluno")
    print("4. Sair")
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
            lerNotasAluno()  
        elseif opcao == 4 then
            print("Saindo do sistema de cadastro...")
            break  
        else
            print("Opçao inválida. Tente novamente.\n")
        end
    end
end

sistemaCadastro()
