public class micro02{
    public static void main(String[] args){
        int num1, num2;
        System.out.print("Digite o primeiro numero: ");
        num1 = Integer.parseInt(System.console().readLine());
        System.out.print("Digite o segundo numero: ");
        num2 = Integer.parseInt(System.console().readLine());

        if(num1 > num2){
            System.out.print("O primeiro numero " + num1 + " e maior que o segundo " + num2);
        }else{
            System.out.print("O segundo numero " + num2 + " e maior que o primeiro " + num1);
        }
    }
}