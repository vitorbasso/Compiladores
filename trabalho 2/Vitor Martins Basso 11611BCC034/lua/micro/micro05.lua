function main()
    local nome, sexo, x, h, m
    h, m = 0, 0
    for x = 1, 5, 1
    do
        print("Digite o nome: ")
        nome = io.read("*line")
        print("H - Homem ou M - Mulher: ")
        sexo = io.read("*line")
        if sexo == "H" then
            h = h + 1
        elseif sexo == "M" then
            m = m + 1
        else 
            print("Sexo so pode ser H ou M!\n")
        end
    end
    print("Foram inseridos "..h.." homens\n")
    print("Foram inseridos "..m.." mulheres\n")
end

main()