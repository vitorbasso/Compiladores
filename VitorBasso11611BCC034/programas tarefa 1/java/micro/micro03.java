public class micro03{
    public static void main(String[] args){
        int numero;
        System.out.print("Digite um numero: ");
        numero = Integer.parseInt(System.console().readLine());
        if(numero >= 100){
            if(numero <= 200){
                System.out.println("O numero esta no intervalo entre 100 e 200");
            }else{
                System.out.println("O numero nao esta no intervalo entre 100 e 200");
            }
        }else{
            System.out.println("O numero nao esta no intervalo entre 100 e 200");
        }
    }
}