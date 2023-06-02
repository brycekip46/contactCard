import 'package:flutter/material.dart';
import 'contacts.dart';
import 'Contact_card.dart';

void main() {

  runApp( const MaterialApp(
    home: MyApp(),));
}
class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text("Contacts"),
        centerTitle: true,
        backgroundColor: Colors.black87,
      ),
      body: Container(
        child:Contact_card(),
      ),
        floatingActionButton: FloatingActionButton(
          onPressed: (){},
          backgroundColor: Colors.blueAccent,
          child: const Icon(Icons.add),
        )

    );
  }
}


