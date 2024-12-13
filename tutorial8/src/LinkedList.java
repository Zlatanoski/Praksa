public class LinkedList {

    Node head;
    public void insert(int data){

        if (head == null){
            head = new Node();
            head.data = data;
        }else{
            head.add(data);
        }
    }
    public void show(){
        Node temp = head;
        while (temp != null){
            System.out.print(temp.data+"->");
            temp = temp.next;
        }
        System.out.println("null");
    }
    public String search(int data){
        Node temp = head;
    while (temp != null){
        if (temp.data == data){
            return data + " is here";
        }
        temp = temp.next;

    }
    return data + "is not here";


    }
}
