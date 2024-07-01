package Task7.Aman.Aman;

import java.util.ArrayList;

public class DBFootballer {
    private static ArrayList<Footballer> footballers=new ArrayList<>();
    static {
        footballers.add(new Footballer("Leo","Messi",1000,"Barcelona",132));
        footballers.add(new Footballer("Eden","Hazard",2330,"Real Madrid",322));
        footballers.add(new Footballer("Samuel","Morata",450,"Chelsea",4332));
        footballers.add(new Footballer("Kevin","De Burenue",1000,"Manchester city",132));
        footballers.add(new Footballer("Aman","Kalabay",1000,"Manchester United",142));
    }

    public static ArrayList<Footballer> getFootballers() {
        return footballers;
    }
    public static void addFootballer(Footballer footballer){
        footballers.add(footballer);
    }
}
