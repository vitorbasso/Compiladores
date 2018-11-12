function int main()
    string nome, sexo
    int x, h, m
    x = 1
    h = 0
    m = 0
    for x = 1, 5, 1 do
        print("Digite o nome: ")
        nome = io.read('*s')
        print("H - Homem ou M - Mulher: ")
        sexo = io.read('*s')
        if sexo == "H" then
            h = h + 1
        else
	    if sexo == "M" then
            	m = m + 1
            else 
            	print("Sexo so pode ser H ou M!\n")
            end
        end
    end
    print("Foram inseridos ")
    print(h)
    print(" homens\n")
    print("Foram inseridos ")
    print(m)
    print(" mulheres\n")
    return 1
end

main()
