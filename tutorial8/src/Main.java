

public class Main {
    public static void main(String[] args) {

        LinkedList list = new LinkedList();
        list.insert(5);
        list.show();
        list.insert(4);
        list.show();
        list.insert(3);
        list.insert(6);

        list.show();

        System.out.println(list.search(20));


    }
}
