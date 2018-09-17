public class micro04{
    public static void main(String[] args){
        int x, num, intervalo;
        intervalo = 0;
        for (x = 1; x <= 5; x++){
            System.out.print("Digite um numero: ");
            num = Integer.parseInt(System.console().readLine());
            if(num >= 10){
                if(num <=150){
                    intervalo = intervalo + 1;
                }
            }
        }
        System.out.println("Ao total, foram digitados " + intervalo + " numeros no intervalo entre 10 e 150");
    }
}