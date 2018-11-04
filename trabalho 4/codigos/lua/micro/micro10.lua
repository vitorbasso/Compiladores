function int fatorial(int n)
	local int x
	
	if n <= 1 then
		return 1
	else
		y = n - 1
		x = fatorial (y)
		return n * x
	end
end

function int main()
	local int numero
	local int fat
	print("Digite um numero: ")
	numero = io.read()
	fat = fatorial(numero)
	print("O fatorial de ")
	print("numero")
	print(" e ")
	print(fat)

	return 1
end

