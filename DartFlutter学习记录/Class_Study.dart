/*Dart类使用

/**内容：
 *      1.静态成员
 *      2.抽象方法
 *      3.多态
 *      4.接口
 */

静态成员
1.使用static关键字来声明变量和函数。
2.静态方法不能访问非静态成员，非静态方法可以访问静态成员。*/

/**
 * 抽象类
 * Dart中抽象类：Dart抽象类主要用于定于标准，子类可以继承抽象类，爷可以实现抽象类接口。
 * 
 * 
 * 1、抽象类通过abstract关键字来定义
 * 
 * 2、Dart中的抽象方法不能用abstract声明，Dart中没有方法体的方法我们成为抽象方法。
 * 3、如果子类继承抽象类必须得实现里面的抽象方法。
 * 4、如果把抽象类当作接口实现的话必须得实现抽象类里面定义得所有属性和方法。
 * 5、抽象类不能被实例化，只有继承它得子类可以。
 * 
 * 
 * extends抽象类和implements的区别：
 *    1.如果要复用抽象类里面的方法，并且要用抽象方法约束自类的话我们就用extends继承抽象类
 *    2.如果只是把抽象类当作标准的话我们就用implements来实现抽象类。
 */
// 例子
void main() {
  Dog d = Dog();
  d.eat();

  Dog2 d2 = Dog2();
  d2.run();
  //子类的实例赋值给父类引用，将只能使用父类中的方法,称为向上转型。
  Animal d3 = Dog2();
  d3.eat();
  //d3.run();不能使用子类定义的方法。
  MySql m = MySql(',,,,,,');
  m.add();
}

abstract class Animal {
  eat();
}

class Dog extends Animal {
  @override
  eat() {
    // TODO: implement eat
    print('吃饱啦');
  }
}

/**多态
 *    Dart中的多态：
 *        允许将子类类型的指针赋值给父类类型的指针，同一个函数调用会有不同的执行效果。
 *        
 *        子类的实例赋值给父类的引用。
 * 
 *        多态就是父类定义的一个方法不去实现，让继承他的子类去实现，每个子类都有不同的表现。
 * 
 * 
 * 例子：
 * 实现上面的Animal抽象类。
 */

class Dog2 extends Animal {
  @override
  eat() {
    // TODO: implement eat
    print('吃肉啦');
  }

  run() {
    print('跑起来啦');
  }
}

/**
 * Dart接口   定义标准。
 * 和java一样，Dart也有接口，但是和java是有区别的。
 * 
 *    Dart的接口没有interface关键字定义接口，而是普通类或抽象类都可以作为接口被实现。
 *    同样使用implements关键字进行实现。
 *    但是Dart的接口有点奇怪，如果实现的类是普通类，会将普通类和抽象中的属性的方法全部需要覆写一遍。
 * 
 *    而因为抽象类可以定义抽象方法，普通类不可以，所以一般如果要实现像java接口那样的方式，一般会使用抽象类。
 * 
 *    建议使用抽象类定义接口。
 * 
 * 
 * 例子：
 * 
 */
abstract class Db {
  //当过接口  接口：就是约定、规范
  String? url;
  add();
  save();
  delete();
}

class MySql implements Db {
  @override
  String? url;
  MySql(this.url);
  @override
  add() {
    // TODO: implement add
    return null;
  }

  @override
  delete() {
    // TODO: implement delete
    return null;
  }

  @override
  save() {
    // TODO: implement save
    return null;
  }
}
