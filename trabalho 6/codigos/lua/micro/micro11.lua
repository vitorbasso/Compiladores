function main() int
    int numero, x
    print("Digite um numero ")
    numero = io.read()
    x = verifica(numero)
    if x == 1 then
        print("Numero positivo\n")
    else 
	if x == 0 then
        	print("Zero\n")
    	else
        	print("Numero negativo\n")
    	end
    end
    return 1
end

function verifica(n int) int
    int res
    if n > 0 then
        res = 1
    else 
	if n < 0 then
	        res = -1
    	else
        	res = 0
    	end
    end
    return res
end

main()
