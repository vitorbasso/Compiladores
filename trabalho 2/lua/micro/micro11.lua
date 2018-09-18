function main()
    local numero, x
    print("Digite um numero ")
    numero = io.read("*n")
    x = verifica(numero)
    if x == 1 then
        print("Numero positivo\n")
    elseif x == 0 then
        print("Zero\n")
    else
        print("Numero negativo\n")
    end
end

function verifica(n)
    local res
    if n > 0 then
        res = 1
    elseif n < 0 then
        res = -1
    else
        res = 0
    end
    return res
end

main()
