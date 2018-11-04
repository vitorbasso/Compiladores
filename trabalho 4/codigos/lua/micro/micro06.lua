function int main()
    int numero
    print("Digite um numero de 1 a 5: ")
    numero = io.read('*n')
    if numero == 1 then
        print("Um\n")
    end
    if numero == 2 then
        print("Dois\n")
    end
    if numero == 3 then
        print("Tres\n")
    end
    if numero == 4 then
        print("Quatro\n")
    end
    if numero == 5 then
        print("Cinco\n")
    else
        print("Numero invalido!!!")
    end
   return 1
end

main()
