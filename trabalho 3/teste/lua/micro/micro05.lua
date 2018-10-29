function int main()
    local string nome
    local string sexo
    local int x
    local int h
    local int m
    x = 1
    h = 0
    m = 0
    for x = 1, 5, 1 do
        print("Digite o nome: ")
        nome = io.read()
        print("H - Homem ou M - Mulher: ")
        sexo = io.read()
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
    print("Foram inseridos "..h.." homens\n")
    print("Foram inseridos "..m.." mulheres\n")
end
