package lee;

/**
 * Created by jarvis on 2016/12/6.
 */
public class Persion {
    private String name;
    private int age;

    //无参数的构造器


    public Persion() {

    }

    public Persion(String name, int age) {
        this.name = name;
        this.age = age;
    }

    public int getAge() {
        return age;
    }

    public void setAge(int age) {
        this.age = age;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }
}
