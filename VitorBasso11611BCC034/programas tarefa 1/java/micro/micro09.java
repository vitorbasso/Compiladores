public class micro09{
    public static void main(String[] args){
        double preco, venda, novo_preco;
        novo_preco = 0;
        System.out.print("Digite o preco: ");
        preco = Double.parseDouble(System.console().readLine());
        System.out.print("Digite a venda: ");
        venda = Double.parseDouble(System.console().readLine());
        if((venda < 500) || (preco < 30)){
            novo_preco = preco + (10/100) * preco;
        }else if(((venda >= 500) && venda < 1200) || ((preco >= 30) && preco >= 80)){
            novo_preco = preco + (15/100) * preco;
        }else if ((venda >= 1200) || (preco >=80)){
            novo_preco = preco - (20/100) * preco;
        }
        System.out.println("O novo preco e " + novo_preco);
    }
}