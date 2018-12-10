function verifica(n int) int
  int res
  
  if n > 0 then
    res = 1
  else
    if n < 0 then
      res = 0-1
    else
      res = 0
    end
  end
  return res
end


function main() int
  int numero, x
  
  print("Digite um número: ")
  numero = io.read()
  x = verifica(numero)
  
  if x == 1 then
    print("Número positivo\n")
  else
    if x == 0 then
      print("Zero\n")
    else
      print("Número negativo\n")
    end
  end
end

main()