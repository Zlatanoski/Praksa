public class Cuboid extends Rectangle {

    int c;
    public Cuboid(int a, int b, int c){

        super(a,b);
        this.c = c;

    }
    public int volume(){
        return super.area() * c;
    }
    public int volume(int a){
        return super.area() * a;
    }

    @Override
    public int area(){
        return 2 * (super.area() + a*c + b*c)   ;
    }
}
