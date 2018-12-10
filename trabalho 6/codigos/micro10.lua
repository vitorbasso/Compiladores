function fatorial(n int) int
  if n <= 0 then
    return 1
  else
    return n * fatorial(n-1)
  end
end

function main() int
  int numero, fat
  
  print("Digite um numero: ")
  numero = io.read()
  
  fat = fatorial(numero)
  
  print("O fatorial de", numero, "é", fat)
end

main()
