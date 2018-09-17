function main()
    local cel, far
    print(" tabela de conversao: Celsius -> Fahrenheit\n")
    print("Digite a temperatura em Celsius: ")
    cel = io.read("*number")
    far = (9*cel + 160)/5
    print("A nova temperatura e: " ..far.." F")
end

main()