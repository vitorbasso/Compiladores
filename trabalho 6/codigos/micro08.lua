function main() int
  int numero
  
  numero = 1
  while numero != 0 do
    print("Digite um número: ")
    numero = io.read()
    
    if numero > 10 then
      print("O número", numero,"é maior que 10\n")
    else
      print("O número",numero,"é menor que 10\n")
    end
  end
end

main()