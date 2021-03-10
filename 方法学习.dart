/**方法学习 
 * 1.箭头函数
 * 2.匿名方法
 * 3.自执行方法
 * 
*/

//1.箭头函数
//当函数后面只执行一行代码或方法时，可以使用=>代替{}.
void main() {
  print(printNum2());
  
}

// void main() => printNum(); 使用箭头函数效果一样

void printNum() {
  print(1);
}

// 2.匿名方法
// 返回类型只能是var
var printNum2 = () {
  return '111';
};

// 3.自执行方法
// 只能放在被执行的方法内或者主方法内

((){
  print(888);
})();
