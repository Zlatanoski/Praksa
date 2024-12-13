public class Node {
    int data;
    Node next;

    public void add(int data) {

        if (next == null) {
            next = new Node();
            next.data = data;

        } else {
            next.add(data);
        }
    }
}