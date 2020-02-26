package modelo;

import java.util.ArrayList;

/**
 *
 * @author sergio
 */
public class Utilidades {
    public static ArrayList<String> getMeses() {
        ArrayList<String> meses = new ArrayList<>();
        for (int i = 1; i < 12; i++) {
            meses.add(String.valueOf(i));
        }
        return meses;
    }
    
    public static ArrayList<String> getDias() {
        ArrayList<String> dias = new ArrayList<>();
        for (int i = 1; i < 31; i++) {
            dias.add(String.valueOf(i));
        }
        return dias;
    }
    
    public static String getHoroscopo(int dia, int mes) {
        String signo = "";
        
        switch ( mes ) {
            case 1:
                if (dia > 20) {
                    signo = "Acuario";
                } else {
                    signo = "Capricornio";
                }
                break;
            case 2:
                if (dia > 20) {
                    signo = "Piscis";
                } else {
                    signo = "Acuario";
                }
                break;
            case 3:
                if (dia > 20) {
                    signo = "Aries";
                } else {
                    signo = "Piscis";
                }
                break;
            case 4:
                if (dia > 20) {
                    signo = "Acuario";
                } else {
                    signo = "Capricornio";
                }
                break;
        }
        
        return signo;
    }
}
