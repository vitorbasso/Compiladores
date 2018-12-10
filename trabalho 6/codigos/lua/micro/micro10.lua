function fatorial(n int) int
	int x, y
	
	if n <= 1 then
		return 1
	else
		y = n - 1
		x = fatorial (y)
		return n * x
	end
end

function main() int
	int numero, fat
	print("Digite um numero: ")
	numero = io.read()
	fat = fatorial(numero)
	print("O fatorial de ", numero, " e ", fat, "\n")
	return 1
end

main()

