function int main()
    int preco, venda, novo_preco
    print("Digite o preco: ")
    preco = io.read('*n')
    print("Digite a venda: ")
    venda = io.read('*n')
    if venda < 500 or preco < 30 then
        novo_preco = preco + 10 / 100 * preco
    else if (venda >= 500 and venda <= 1200) or (preco >=30 and preco <80) then
        novo_preco = preco + 15 / 100 * preco
    else if venda >= 1200 or preco >= 80 then
        novo_preco = preco - 20 / 100 * preco
    end
    end
    end
    print("O novo preco e ")
    print(novo_preco)
    print("\n")
    return 1
end    

main()
