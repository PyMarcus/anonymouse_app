import 'package:flutter/material.dart';
import 'dart:math';


void main()
{
  // screen widgets:
  runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomeStateFul(),
      )
  );
}



String texts(int choice)
{
  List<String> text = [
    "Forget the past. No one becomes successful in the past.",
    "Every man loves justice at another man’s expense.",
    "The real measure of your wealth is how much you'd be worth if you lost all your money.",
    "A youthful figure is what you get when you ask a woman her age.",
    "Fear gives intelligence even to fools."
  ];
  return text[choice];
}




class HomeStateFul extends StatefulWidget {
  const HomeStateFul({Key? key}) : super(key: key);

  @override
  _HomeStateFulState createState() => _HomeStateFulState();
}

class _HomeStateFulState extends State<HomeStateFul> {
  dynamic item = "";

  void generate_text() {
    var randomic = new Random();
    this.item = texts(randomic.nextInt(5));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // top bar
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Anonymouse Phrases",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            decoration: TextDecoration.none,
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.black,
      ),

      // general background
      backgroundColor: Colors.red[900],

      // body
      body: Center(
        child:Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,

              children: <Widget> [
                Image.asset(
                  "images/fawkes.png",
                  height: 300,
                  width: 200,
                  fit: BoxFit.contain,
                  alignment: Alignment.center,
                ),

                Padding(
                  padding: EdgeInsets.all(16),
                  child: Text(
                    "$item",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                      fontFamily: "arial",
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                ),
                TextButton(style:  TextButton.styleFrom(backgroundColor: Colors.black),
                  onPressed: (){setState(() {
                    generate_text();
                  });}, child: Text(
                      "Generate",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                        fontFamily: "arial",
                        fontStyle: FontStyle.normal,
                      )),
                )
              ],
            )
        ),
      ),

      // buttom bar
      bottomNavigationBar: const BottomAppBar(
          color: Colors.black,
          child: Padding(
              padding: EdgeInsets.all(16),
              child:Text(
                  "create by Marcus",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    decoration: TextDecoration.none,
                    color: Colors.white,
                  )
              )
          )
      ),
    );
  }
}
