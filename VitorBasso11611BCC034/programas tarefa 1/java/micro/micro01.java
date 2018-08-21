public class micro01{
    public static void main(String[] args){
        double cel, far;
        System.out.println("Tabela de conversao: Celsius -> Fahrenheit");
        System.out.print("Digite a temperatura em Celsius: ");
        cel = Double.parseDouble(System.console().readLine());
        far = ((9 * cel) + 160) / 5;
        System.out.println("A nova temperatura e " + far + " F");
    }
}