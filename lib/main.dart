import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Login(),
    );
  }
}

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}
class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    var numberList = [
      ['1', '2', '3'],
      ['4', '5','6'],
      ['7', '8', '9'],
    ];
    var list = <Widget>[];
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(80.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [Icon(Icons.lock,size: 80,color: Colors.grey,)
            , Text('กรุณาใส่รหัสผ่าน',
              style: TextStyle(
                    color: Colors.black,
                    fontSize: 50,

              ) ,
            ),
            Expanded(
              child: Container(

                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      for(var i=0 ; i<numberList.length;i++)
                        _buildNumberRow(numberList[i]),
                      Padding(
                        padding: const EdgeInsets.all(9.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,

                          children: [
                            Text('                                     '),
                            Container(
                              child: Center(
                                  child: Text('0'),
                              ),
                              width: 80.0,
                              height: 80.0,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.grey,

                              ),
                            ),
                            Text('                       '),
                            Icon(Icons.backspace_outlined,size: 50),

                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
Row _buildNumberRow(List<String> numberList) {
  return Row(
    children: [
      _buildNumberButton(numberList[0]),
      _buildNumberButton(numberList[1]),
      _buildNumberButton(numberList[2]),
    ],
  );
}

Expanded _buildNumberButton(String Number) {
  return Expanded(
    child: Padding(
      padding: const EdgeInsets.all(9.0),
      child: Container(
        child: Center(
            child: Text(Number)
        ),
        width: 80.0,
        height: 80.0,
        decoration: const BoxDecoration(
          color: Colors.grey,
          shape: BoxShape.circle,
        ),
      ),
    ),
  );
}
