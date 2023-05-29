import 'package:flutter/material.dart';
import 'contacts.dart';


class Contact_card extends StatelessWidget {
  Function delete;
  late final Contact contact;

  Contact_card({required this.contact, required this.delete});


  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0),
      color: Colors.black12,
      child: Padding(
        padding: EdgeInsets.all(12.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 6.0),
                  Text(
                    contact.email,
                    style: const TextStyle(
                      fontSize: 14.0,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 6.0),
                  Text(contact.phone,
                    style: const TextStyle(
                      fontSize: 14.0,
                      color: Colors.white,
                    ),
                  )],
              ),
            ),
            IconButton(
              icon: Icon(
                Icons.phone,
                color: Colors.green,
              )
              , onPressed: () {  },
            ),
            IconButton(
              icon: Icon(
                Icons.message,
                semanticLabel: "Message",
                color: Colors.indigoAccent,
              ),
              onPressed: () {  },


            ),
            IconButton(
              icon: Icon(
                Icons.info_outline_rounded,
                semanticLabel: "Information",
                color: Colors.indigoAccent,
              ),
              onPressed: () {  },


            ),
            IconButton(
              icon: Icon(
                Icons.delete,
                semanticLabel: "Delete",
                color: Colors.redAccent,
              ),
              onPressed: () {
                delete();
              },
            ),
          ],
        ),
      ),
    );
  }
}