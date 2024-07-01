package Task6.Aman.Aman;

import java.util.ArrayList;

public class DBExams {
    private static ArrayList<Gay> gays=new ArrayList<>();

    public static ArrayList<Gay> getGays() {
        return gays;
    }
    public static void addGay(Gay gay){
        gays.add(gay);
    }
}
