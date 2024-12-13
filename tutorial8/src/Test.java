public class Test {
    public static void main(String[] args) {
        Rectangle r = new Rectangle(5, 6);
        System.out.println(r.area());

        Cuboid cuboid = new Cuboid(5,6,7);
        System.out.println(cuboid.volume());

        System.out.println(cuboid.area());
        System.out.println(cuboid.volume(545262));
    }
}
