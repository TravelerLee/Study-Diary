/**类的学习
 * 
 * 1.创建类
 * 2.实例化类
 * 
 * 
 * 构造函数
 */

void main() {
  // 实例化，在主方法内实例化类
  Person p = Person('张三', 55);
  p.printInfo();
  Person l = Person.getInfo();
}

// 创建类
class Person {
  /**
   * dart2.0中，引入了空安全机制，当您选择使用空安全时，代码中的类型将默认是非空的，
   * 意味着 除非您声明它们可空，它们的值都不能为空。有了空安全，
   * 原本处于您的 运行时 的空值引用错误将变为 编辑时 的分析错误。
   * 若您想让变量可以为 null，只需要在类型声明后加上 ?。
   * 
   */
  String? name;
  int? age;
  // 构造函数
  Person(this.name, this.age);

  Person.getInfo() {
    print('命名构造函数');
  }

  void printInfo() {
    print('名字：${this.name}---年龄：${this.age}');
  }
}
