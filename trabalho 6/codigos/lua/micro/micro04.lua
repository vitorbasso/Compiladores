function main() int
    int x, num, intervalo
    intervalo = 0
    x = 0
    while x < 5 do
        print("Digite um numero: ")
        num = io.read()
        if num >= 10 then
            if num <= 150 then
                intervalo = intervalo + 1
            end
        end
	x = x + 1
    end
    print("Ao total, foram digitados ", intervalo, " numeros no intervalo entre 10 e 150")
    return 1
end

main()
