package TaskThree;

import java.util.ArrayList;

public class Database {
    private static ArrayList<Person> people = new ArrayList<>();
    static {
        people.add(new Person("Aman","Kalabay",17,"IT",100000));
        people.add(new Person("Ernar","Kalabay",11,"IT",200000));
        people.add(new Person("Askhat","Alaubay",34,"Asd",90));
        people.add(new Person("Nurbakyt","Zhanysbay",18,"IT",12000));
        people.add(new Person("Aman","Kalabay",17,"IT",100000));
        people.add(new Person("Pop","Kala",90,"HR",90));
        people.add(new Person("Qwerty","Qwerty",17,"Asa",100000));
    }

    public Person check(String name,String surname){
        for(Person person :people){
            if(person.getName().equals(name) && person.getSurname().equals(surname)){
                return person;
            }
        }
        return null;
    }
}
