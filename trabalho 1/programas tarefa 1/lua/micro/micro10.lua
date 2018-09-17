function main()
    local numero, fat
    print("Digite um numero: ")
    numero = io.read("*n")
    fat = fatorial(numero)

    print("O fatorial de "..numero.." e "..fat.."\n")
end

function fatorial(n)
    if n <= 0 then
        return 1
    else
        return n * fatorial(n-1)
    end
end

main()