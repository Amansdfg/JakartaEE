package Task4.asd.asd;

import java.util.ArrayList;

public class DataBase {
    private static ArrayList<Client> clients=new ArrayList<>();
    public static void addClient(Client client){
        clients.add(client);
    }
    public static ArrayList<Client> getClients(){
        return clients;
    }
    public static Client getClientById(Long id){
        for(int i=0;i<clients.size();i++){
            if(clients.get(i).getId()==id){
                return clients.get(i);
            }
        }
        return null;
    }
}
