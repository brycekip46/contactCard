import 'package:flutter/material.dart';
import 'contacts.dart';


class Contact_card extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    List<Contact> contacts = [
      Contact(name: "John Kiriamiti", email: "John@gmail.com", phone: "1234567890"),
      Contact(name: "Bryce Kip", email: "bryce@gmail.com", phone: "1234567890"),
      Contact(name: "John Kiriamiti", email: "John@gmail.com", phone: "1234567890"),

    ];

    return Padding(
      padding: EdgeInsets.all(12.0),
      child: ListView(
        children: [
          for(var contact in contacts)
          Card(
            color: Colors.black45,
            child: ListTile(

              leading: const CircleAvatar(
    backgroundImage: AssetImage('assets/hacker.jpg'),
    radius: 30.0,
    ),
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [

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
                  },
                ),
              ],
            ),
        ),
          ),
    ]),
    );
  }
}