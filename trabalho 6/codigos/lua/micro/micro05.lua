function main() int
  string nome, sexo
  int x, h, m
  
  h = 0
  m = 0
  x = 1

  while x <= 5 do
    print("Digite o nome:")
    nome = io.read()
    print("H - Homem ou M - Mulher: ")
    sexo = io.read()
    if sexo == "H" then
      h = h + 1
    else 
      if sexo == "M" then
        m = m + 1
      else
        print("Sexo só pode ser H ou M!\n")
      end
    end
     x = x + 1
  end

  print("Foram inseridos", h, "Homens\n")
  print("Foram inseridos",m,"Mulheres\n")

end
