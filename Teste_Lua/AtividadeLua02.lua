local function VerificarIdade()
    print("Digite sua idade: ")
    local idade = tonumber(io.read())

    while idade == nil or idade <= 0 do
        print("Idade invalida!!")
        idade = tonumber(io.read())
end

if idade >= 18 then
    print("Voce é maior de idade")
else
    print("Voce é menor de idade")
end
end
VerificarIdade()