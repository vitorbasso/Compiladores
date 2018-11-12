function int main()
	int cel, far
	print("Tabela de conversão: Celsius -> Fahrenheit\n")
	print("Digite a temperatura em Celsius: ")
	cel = io.read('*n')
	far = (9*cel+160)/5
	print("A nova temperatura eh: ")
	print(far)
	print(" F\n")
 	return 1
end

main()
