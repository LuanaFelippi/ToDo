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
      title: 'ToDo da Lulu',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  //123
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("ToDo da Lulu"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(
                flex: 10,
                child: ListView.builder(
                    itemCount: 7,
                    itemBuilder: (context, i){
                      return Padding(padding: const EdgeInsets.all(4),
                        child: GestureDetector(
                          onTap: (){
                            print("você clicou");
                          },
                          onLongPress: (){
                            print("você pressionou muito tempo");
                          },
                          child:  Container(
                            color: Colors.white,
                            width: MediaQuery.of(context).size.width,
                            child: Text("opa"),
                          ),
                        )
                      );
                    }
                )
            ),
            Expanded(
              flex: 1,
              child: Padding(
                  padding: EdgeInsets.all(8),
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text("+"),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
