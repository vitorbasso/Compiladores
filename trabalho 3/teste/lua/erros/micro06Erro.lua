function main()
    local numero
    print("Digite um numero de 1 a 5: ")
    numero = io.read("*number")
    if numero == 1 then
        print("Um\n")
    elseif numero == 2 then
        print("Dois\n")
    elseif numero == 3 then
        print("Tres\n")
    elseif numero == 4 then
        print("Quatro\n")
    elseif numero == 5 then
        print("Cinco\n")
    else 
	@
        print("Numero invalido!!!")
    end
end

main()
