public class micro08{
    public static void main(String[] args){
        int numero;
        numero = 1;
        while (numero != 0){
            System.out.print("Digite um numero: ");
            numero = Integer.parseInt(System.console().readLine());
            if(numero > 10){
                System.out.println("O numero " + numero + " e maior que 10");
            }else{
                System.out.println("O numero " + numero + " e menor que 10");
            }
        }
    }
}