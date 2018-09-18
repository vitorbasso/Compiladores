function main()
    local x, num, intervalo
    intervalo = 0
    for x = 1, 5, 1
    do
        print("Digite um numero: ")
        num = io.read("*number")
        if num >= 10 then
            if num <= 150 then
                intervalo = intervalo + 1
            end
        end
    end
    print("Ao total, foram digitados "..intervalo.." numeros no intervalo entre 10 e 150")
end

main()