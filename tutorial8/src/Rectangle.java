public class Rectangle {
    int a,b;
    //int a;
    //int b;

    public Rectangle(int a,int b){
        this.a = a; //We are referring to the global variable a of this class using this
        this.b = b;
    }
    public  int area(){
        return a*b;
    }

    public int perimeter(){
        return 2*(a+b);
    }
}
