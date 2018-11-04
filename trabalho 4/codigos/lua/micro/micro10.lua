function int fatorial(int n)
	int x, y
	
	if n <= 1 then
		return 1
	else
		y = n - 1
		x = fatorial (y)
		return n * x
	end
end

function int main()
	int numero, fat
	print("Digite um numero: ")
	numero = io.read('*n')
	fat = fatorial(numero)
	print("O fatorial de ")
	print("numero")
	print(" e ")
	print(fat)

	return 1
end

main()

