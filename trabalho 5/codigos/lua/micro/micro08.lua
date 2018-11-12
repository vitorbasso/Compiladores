function int main()
    int numero
    numero = 1
    while numero ~= 0 do
        print("Digite um numero: ")
        numero = io.read('*n')
        if numero > 10 then
            print("O numero ")
 	    print(numero)
	    print(" e maior que 10\n")
        else
            print("O numero ")
            print(numero)
	    print(" e menor que 10\n")
        end
    end
    return 1
end

main()
