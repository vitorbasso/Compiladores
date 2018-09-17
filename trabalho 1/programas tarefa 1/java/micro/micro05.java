public class micro05{
    public static void main(String[] args){
        String nome, sexo;
        int x, h, m;
        h = 0;
        m = 0;
        for( x=1; x <= 5; x++){
            System.out.print("Digite o nome: ");
            nome = System.console().readLine();
            System.out.print("H - Homem ou M - Mulher:");
            sexo = System.console().readLine();
            if(sexo == "H"){
                h = h + 1;
            }else if(sexo == "M"){
                m = m + 1;
            }else{
                System.out.println("Sexo so pode ser H ou M!");
            }
        }
        System.out.println("Foram inseridos " + h + " Homens");
        System.out.println("Foram inseridos " + m + " Mulheres");
    }
}