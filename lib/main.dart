import 'package:flutter/material.dart';

void main() {
  runApp(const MainPage());
}

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

String heads = "Heads";
String tails = "Tails";
bool flag = true;
String dogeHead = "images/heads.jpg";
String dogeTail = "images/tails.jpg";
class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
        title: "Heads or Tails?",
        home: Scaffold(
          
          appBar: AppBar(
            backgroundColor: Colors.amberAccent,
            centerTitle: true,
            title: const Text("Turn the Coin"),
            
          ),
          body: Column(
            children: [
              Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const SizedBox(height: 180),
                      Text(flag? heads : tails, style: const TextStyle(fontSize: 40, fontWeight: FontWeight.w800)),
                      const SizedBox(height: 40),
                      Image.asset(
                        flag ? dogeHead: dogeTail,
                        width: 300,
                        height: 300,
                      ),
                      const SizedBox(height: 50),
                      ElevatedButton(
                    
                          onPressed: () {
                            flag = !flag;
                            setState(() {});
                          },
                          child: const Text("Turn", style:  TextStyle(fontSize: 24,color: Colors.amber)))
                    ],
                  )),
            ],
          ),
        ));
  }
}
