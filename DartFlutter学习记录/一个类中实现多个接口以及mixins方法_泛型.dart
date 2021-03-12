/**
 * 1.一个类中实现多个接口
 * 2.mixins
 * 3.泛型
 * 
 * 
 * 例：
 *
 */
abstract class A {
  printA();
}

abstract class B {
  PrintB();
}

class C implements A, B {
  @override
  PrintB() {
    // TODO: implement PrintB
    print('打印b');
  }

  @override
  printA() {
    // TODO: implement printA
    print('打印a');
  }
}

main() {
  C c = C();
  c.printA();
  c.PrintB();
  //泛型类的使用
  PrintClass p = PrintClass();
  p.add(1);
  p.add('字符串');
  p.printInfo();

  //泛型接口的使用
  MemoryCache m = MemoryCache<Map>();
  m.setByKey("index", {"name": "张三", "age": 25});
}

/**
 * 2.mixins  
 *      mixins的中文意思是混入，就是在类中混入其他功能
 * 
 * 在Dart中可以使用mixins实现类似多继承的功能
 * 
 * 
 * 
 * 1.作为mixins的类只能继承自object，不能继承其他类
 * 2.作为mixins的类不能有构造函数
 * 3.一个类可以mixins多个mixins类
 * 4.mixins绝不是继承，也不是接口，而是一种全新的特性
 * 
 * 例：
 * 
 */

class D extends F with A, B {
  D(String name, int age) : super(name, age);

  @override
  PrintB() {
    // TODO: implement PrintB
    throw UnimplementedError();
  }

  @override
  printA() {
    // TODO: implement printA
    throw UnimplementedError();
  }
}

class F {
  final String name;
  final int age;
  F(this.name, this.age);
}

/**
 * 3.泛型
 * 
 * 什么是泛型？
 *    通俗理解：泛型就是解决类  接口 方法的复用性、以及对不特定数据类型的支持（类型校验）。
 * 
 * 
 */
class Data {
  // 如下代码，只能返回String类型的值
  String getData(String value) {
    return value;
  }

  // 如下代码，同时支持返回String类型和Int类型。但是这么写会造成代码冗余。
  String getData1(String value) {
    return value;
  }

  int getData2(int value) {
    return value;
  }

  // 如下代码，同时返回String类型和int类型，不指定类型可以解决这个问题
  getData3(value) {
    return value;
  }

  // 不指定类型放弃了类型检查。我们想的是传入什么类型返回什么类型。比如：传入int类型，
  // 必须返回int类型，传入String类型，必须返回String类型
  getData4<T>(T value) {
    return value;
  }
}

// 案例： 集合List 泛型类的用法
class PrintClass<T> {
  List<T> list = <T>[];
  void add(T value) {
    this.list.add(value);
  }

  void printInfo() {
    for (var i = 0; i < list.length; i++) {
      print(this.list[i]);
    }
  }
}

/**
 * Dart的泛型接口：
 * 
 * 
 *    实现数据缓存的功能：有文件缓存和内存缓存。内存缓存和文件缓存按照接口约束实现。
 *    1.定义一个泛型接口，约束实现它的子类必须有getByKey(Key)和setByKey(Key,value)
 *    2.要求setByKey的时候value的类型和实例化子类的时候指定的类型一致。
 *
 */

abstract class Cache<T> {
  getByKey(String Key);
  void setByKey(String Key, T value);
}

class FlieCache<T> implements Cache<T> {
  @override
  getByKey(String Key) {
    // TODO: implement getByKey
    return null;
  }

  @override
  void setByKey(String Key, T value) {
    // TODO: implement setByKey
    print('我是文件缓存，把Key=${Key} value${value}的数据写入到文件中');
  }
}

class MemoryCache<T> implements Cache<T> {
  @override
  getByKey(String Key) {
    // TODO: implement getByKey
    return null;
  }

  @override
  void setByKey(String Key, T value) {
    // TODO: implement setByKey
    print('我是内存缓存，把Key=${Key} value=${value}的数据写入到文件中');
  }
}
