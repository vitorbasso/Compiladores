public class micro10{
    public static void main(String[] args){
        int numero, fat;
        System.out.print("Digite o numero: ");
        numero = Integer.parseInt(System.console().readLine());
        fat = fatorial(numero);
        System.out.print("O fatorial de ");
        System.out.print(numero);
        System.out.print(" e ");
        System.out.print(fat);
    }
    public static int fatorial(int n){
        if(n <= 0){
            return 1;
        }else{
            return (n * fatorial(n-1));
        }
        
    }
}