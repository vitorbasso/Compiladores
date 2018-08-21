public class micro07{
    public static void main(String[] args){
        int programa, numero, opc;

        programa = 1;
        while(programa == 1){
            System.out.print("Digite um numero: ");
            numero = Integer.parseInt(System.console().readLine());
            if(numero > 0){
                System.out.println("Positivo");
            }else{
                if(numero == 0){
                    System.out.println("O numero e igual a 0");
                }
                if(numero < 0){
                    System.out.println("Negativo");
                }
            }
            System.out.print("Deseja finalizar? (S -1) ");
            opc = Integer.parseInt(System.console().readLine());
            if(opc == 1){
                programa = 0;
            }

        }
    }
}