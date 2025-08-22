
math.randomseed(os.time()) 
local numero_secreto = math.random(1, 100) 
print("Bem-vindo ao Jogo de Adivinhação!")
print("Eu escolhi um número entre 1 e 100. Tente adivinhar!")

local tentativas = 0
local acertou = false

while not acertou do
    print("Digite o seu palpite: ")
    local palpite = tonumber(io.read())
    tentativas = tentativas + 1

    if palpite > numero_secreto then
        print("O número é menor. Tente novamente.")
    elseif palpite < numero_secreto then
        print("O número é maior. Tente novamente.")
    else
        print("Parabéns! Você acertou em " .. tentativas .. " tentativas.")
        acertou = true
    end
end
