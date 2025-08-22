
local function calcularMedia(a, b, c)
    return (a + b + c) / 3
end


local function lerNotasAluno(nome)
    print("Digite as 3 notas de " .. nome)
    io.write("Nota 1: ")
    local nota1 = tonumber(io.read())
    io.write("Nota 2: ")
    local nota2 = tonumber(io.read())
    io.write("Nota 3: ")
    local nota3 = tonumber(io.read())

    return calcularMedia(nota1, nota2, nota3)
end


local function mostrarResultado(nome, media)
    print(nome .. " - Média: " .. string.format("%.2f", media))

    if media >= 7 then
        print(nome .. " foi aprovado!")
    else
        print(nome .. " foi reprovado!")
    end
end


print("Calculadora de notas de alunos")


print("Digite o nome do aluno:")
local nomeAluno = io.read()


local mediaAluno = lerNotasAluno(nomeAluno)


mostrarResultado(nomeAluno, mediaAluno)
