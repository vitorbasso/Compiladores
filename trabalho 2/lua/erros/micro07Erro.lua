function main()
    local programa, numero, opc
    programa = 1
    while programa == 1 do
        print("Digite um numero: ")
        numero = io.read("*n")
        if numero > 0 then
            print("Positivo\n")
        else
            if numero == 0 then
                print("O numero e igual a 0\n")
            end
            if numero < 0 then
                print("Negativo\n)
            end
        end
        print("Deseja finalizar? (S - 1): ")
        opc = io.read("*n")
        if opc == 1 then
            programa = 0
        end
    end
end

main()
