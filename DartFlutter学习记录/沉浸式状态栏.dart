/*将原生代码放在主函数内部执行*/
void main() {
  runApp(MyApp());
  //安卓沉浸式状态栏
  if (Platform.isAndroid) {
    //系统ui覆盖风格
    SystemUiOverlayStyle systemUiOverlayStyle = SystemUiOverlayStyle(
        //设置颜色为透明
        statusBarColor: Colors.transparent);
    SystemChrome.setSystemUIOverlayStyle(systemUiOverlayStyle);
  }
}
