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
  List<Contact> contacts = [
  Contact(name: "John Kiriamiti", email: "John@gmail.com", phone: "1234567890"),
  Contact(name: "Bryce Kip", email: "bryce@gmail.com", phone: "1234567890"),
    Contact(name: "John Kiriamiti", email: "John@gmail.com", phone: "1234567890"),

  ];

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text("Contacts"),
        centerTitle: true,
        backgroundColor: Colors.black87,
      ),
      body:Container(
        color: Colors.black,
        child: Column(
          children: contacts.map((contact) => Contact_card(contact: contact,
          delete: (){
            setState(() {
              contacts.remove(contact);
            });
          },
          )).toList(),


        ),
      ),
        floatingActionButton: FloatingActionButton(
          onPressed: (){
            setState(() {
              contacts.add(Contact(name: "John Kiriamiti",
                  email: "kiriamiti@gmail.com",
                  phone: "1234567890"));

            });},
          backgroundColor: Colors.blueAccent,
          child: const Icon(Icons.add),
        )

    );
  }
}


