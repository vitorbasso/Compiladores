public class micro06{
    public static void main(String[] args){
        int numero;
        System.out.print("Digite um numero de 1 a 5: ");
        numero = Integer.parseInt(System.console().readLine());
        if(numero == 1){
            System.out.println("Um");
        }else if(numero == 2){
            System.out.println("Dois");
        }else if(numero == 3){
            System.out.println("Tres");
        }else if(numero == 4){
            System.out.println("Quatro");
        }else if(numero == 5){
            System.out.println("Cinco");
        }else{
            System.out.println("Numero invalido!!!");
        }
    }
}