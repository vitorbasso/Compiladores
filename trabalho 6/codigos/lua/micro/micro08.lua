function main() int
    int numero
    numero = 1
    while numero ~= 0 do
        print("Digite um numero: ")
        numero = io.read()
        if numero > 10 then
            print("O numero ", numero, " e maior que 10\n")
        else
            print("O numero ", numero, " e menor que 10 \n")
        end
    end
    return 1
end

main()
