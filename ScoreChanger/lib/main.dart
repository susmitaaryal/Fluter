import 'package:flutter/material.dart';
void main(){
  runApp(ScoreApp());
}

class ScoreApp extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Score App",
      home: ScoreHome(),
    );
  }
}

class ScoreHome extends StatefulWidget {

  @override
  State<ScoreHome> createState() => _ScoreHomeState();
}

class _ScoreHomeState extends State<ScoreHome> {
  int number = 0;
  void increaseNumber(){
    setState(() {
      number++;
    });
  }

  void decreaseNumber(){
    setState(() {
      number--;
    });
  }

  void resetNumber(){
    setState(() {
      number = 0;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Score Changer"),
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.restore_outlined),
        onPressed: resetNumber,
      ),
      body: Column(
        children: [
          SizedBox(height: 25,),
          Center(child: Text("Score is", style: TextStyle(color: Colors.green, fontSize: 25, fontWeight: FontWeight.bold),)),
          Center(child: Text(number.toString(), style: TextStyle(color: Colors.green, fontSize: 125, fontWeight: FontWeight.bold),)),
          SizedBox(height: 25,),
          Container(
            padding: EdgeInsets.all(8.0),
            height: 100,
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    height: 100,
                    child: ElevatedButton(
                      onPressed: increaseNumber,
                      child: Text("Increase"),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    padding: EdgeInsets.only(left: 8.0),
                    height: 100,
                    child: ElevatedButton(
                      onPressed: decreaseNumber,
                      child: Text("Decrease"),
                    ),
                  ),
                )
              ],
            ),
          )

          ],
      ),
    );
  }
}
