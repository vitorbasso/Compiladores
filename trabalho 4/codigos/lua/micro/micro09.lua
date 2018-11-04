function int main()
    local int preco
    local int venda
    local int novo_preco
    print("Digite o preco: ")
    preco = io.read()
    print("Digite a venda: ")
    venda = io.read()
    if venda < 500 or preco < 30 then
        novo_preco = preco + 10 / 100 * preco
    else if (venda >= 500 and venda <= 1200) or (preco >=30 and preco <80) then
        novo_preco = preco + 15 / 100 * preco
    else if venda >= 1200 or preco >= 80 then
        novo_preco = preco - 20 / 100 * preco
    end
    end
    end
    print("O novo preco e "..novo_preco.."\n")
end    
