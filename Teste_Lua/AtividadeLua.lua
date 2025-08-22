local function soma(a, b )
    return a + b
end

local function menos(a, b)
    return a - b 
end

local function vezes(a, b)
    return a * b
end

local function divisao(a, b)
    if b == 0 then
        return"O valor não pode ser dividido por 0"

    else
        return a / b 
    end
end


local function menu()
    print("escolha uma opção")
    print("1 - Soma")
    print("2 - Menos")
    print("3 - vezes")
    print("4 - divisao")
    print("5 - sair")
end

local function Calculadora()
    while true do 
        menu()
        local opcao = tonumber(io.read())

        if opcao == 5 then
            print("Finizaliando...")
            break
    end

    print("Digite o primeiro Numero: ")
    local a = tonumber(io.read())

    print ("Digite o segundo Numero: ")
    local b = tonumber(io.read())
    

    if opcao == 1 then
        print("Resultado " ..soma(a + b))
    elseif opcao == 2 then
        print("Resultado" .. menos(a - b))
    elseif opcao == 3 then 
        print("Resultado " .. vezes(a * b))
    elseif opcao == 4 then
    print("Resultado " .. divisao(a / b))
    end

end
end


Calculadora()