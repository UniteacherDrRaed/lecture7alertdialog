import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(

      home: MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("AlertDialgo example"),
        centerTitle: true,
        titleTextStyle:const TextStyle(color: Colors.white),
        backgroundColor: Colors.red,
      ),
      body: ElevatedButton.icon(onPressed: ()
          {
            showDialog(context: context,
                barrierDismissible: false,
                barrierColor: Colors.green.shade100,
                builder: (context)
            {
              return AlertDialog(
                actionsAlignment: MainAxisAlignment.spaceEvenly,
                backgroundColor: Colors.orange.shade100,
                elevation: 10,
                shadowColor: Colors.blue,
                alignment: Alignment.center,
                icon: const Icon(Icons.add_circle),

                iconColor: Colors.red,
                title:const Text("Confirm adding student"),
                titleTextStyle: const TextStyle(color: Colors.red),
                titlePadding:const EdgeInsets.all(5),
                content:const Text("do you want to add this student?"),
                contentTextStyle:const TextStyle(color: Colors.red),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(35),
                  side: BorderSide(
                    color: Colors.red,
                    width: 4,
                  )
                ),
                actions: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.lime,
                      textStyle: TextStyle(color: Colors.white),
                    ),
                      onPressed: (){
                    print("yes");
                    Navigator.of(context).pop();
                  }, child: const Text("yes")),
                  ElevatedButton(onPressed: (){
                    print("no");
                    Navigator.of(context).pop();
                  }, child: const Text("no")),
                ],
              );
            });

          },
          icon:const Icon(Icons.add),
          label:const Text("add student")),
    );
  }
}
