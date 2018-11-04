function int main()
    local int num1
    local int num2
    print("Digite o primeiro numero: ")
    num1 = io.read()
    print("Digite o segundo numero: ")
    num2 = io.read()

    if num1 > num2 then
        print("O primeiro número "..num1.." é maior que o segundo "..num2)
    else
        print("O segundo número "..num2.." é maior que o primeiro "..num1)
    end
end

