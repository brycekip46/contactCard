import 'package:flutter/material.dart';
import 'contacts.dart';

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

  Widget contactTemplate(Contact contact){
    return  Card(
      margin: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0),
      child: Padding(
        padding: EdgeInsets.all(12.0),
        child: Row(
          children: [
            const CircleAvatar(
              backgroundImage: AssetImage('assets/hacker.jpg'),
              radius: 30.0,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    contact.name,
                    style: const TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey,
                    ),
                  ),
                  const SizedBox(height: 6.0),
                  Text(
                    contact.email,
                    style: const TextStyle(
                      fontSize: 14.0,
                      color: Colors.grey,
                    ),
                  ),
                  SizedBox(height: 6.0),
                    Text(contact.phone,
                      style: const TextStyle(
                        fontSize: 14.0,
                        color: Colors.grey,
                    ),
                    )],
              ),
            ),
          ],
        ),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text("Contacts"),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
      ),
      body: Column(
        children: contacts.map((contact) => contactTemplate(contact)).toList(),

      ),
        floatingActionButton: FloatingActionButton(
          onPressed: (){},
          child: const Icon(Icons.add),
          backgroundColor: Colors.blueAccent,
        )

    );
  }
}
