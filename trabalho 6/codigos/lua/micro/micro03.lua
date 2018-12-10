function main() int
    int numero
    print("Digite um numero: ")
    numero = io.read()
    if numero >= 100 then
        if numero <= 200 then
            print("O numero esta no intervalo entre 100 e 200\n")
        else
            print("O numero nao esta no intervalo entre 100 e 200\n")
        end
    else
        print("O numero nao esta no intervalo entre 100 e 200\n")
    end
    return 1
end

main()
