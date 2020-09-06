import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:mi_card/widgets/Hyperlink.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal.shade600,
        body: SafeArea(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 50.0,
              backgroundImage: AssetImage('images/shak.jpg'),
            ),
            Text(
              'Shashank Garg',
              style: TextStyle(
                  fontSize: 30.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Pacifico'),
            ),
            SizedBox(height: 3),
            Text(
              '(Software Engineer/Coder)',
              style: TextStyle(
                fontFamily: 'Source Sans Pro',
                color: Colors.teal.shade100,
                fontSize: 20.0,
                letterSpacing: 2.5,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Padding(
              padding: const EdgeInsets.all(8),
              child: Card(
                margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 20.0),
                color: Colors.white,
                child: ListTile(
                    leading: Icon(
                      Icons.email,
                      size: 40.0,
                      color: Colors.teal.shade600,
                    ),
                    title: Text(
                      'Shashank.garg9300@gmail.com',
                      style: TextStyle(
                        fontSize: 19,
                        fontFamily: 'Source Sans Pro',
                      ),
                    )),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 20.0),
                color: Colors.white,
                child: ListTile(
                    leading: Icon(
                      Icons.phone,
                      size: 45.0,
                      color: Colors.teal.shade600,
                    ),
                    title: Text(
                      'xxxxxxxxxx',
                      style: TextStyle(
                        fontSize: 30.0,
                        fontFamily: 'Source Sans Pro',
                      ),
                    )),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 20.0),
                color: Colors.white,
                child: ListTile(
                  leading: Image(
                    image: NetworkImage(
                        'https://dwglogo.com/wp-content/uploads/2020/06/Linkedin_symbol_transparent.png'),
                    height: 50.0,
                    width: 50.0,
                  ),
                  trailing: Hyperlink(
                      'https://www.linkedin.com/in/shashank-garg-967500190',
                      'Shashank Garg (LinkedIn)'),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 20.0),
                color: Colors.white,
                child: ListTile(
                  leading: Image(
                    image: NetworkImage(
                        'https://cdn.iconscout.com/icon/free/png-256/github-153-675523.png'),
                    height: 40.0,
                    width: 40.0,
                  ),
                  trailing: Hyperlink('https://github.com/shashankgarg93',
                      'Shashank Garg (GitHub)   '),
                ),
              ),
            ),
          ],
        )),
      ),
    );
  }
}
