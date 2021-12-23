import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'dart:io';
void main() {
  runApp(const Morning());
}

class Morning extends StatefulWidget {
  const Morning({Key? key}) : super(key: key);

  @override
  State<Morning> createState() => _MorningState();
}

class _MorningState extends State<Morning> {
  int selectedindex = 0;
  void itemindex(int index) {
    setState(() {
      selectedindex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: const Text('APP'),
          leading: const Icon(Icons.menu),
          actions: const [
            Padding(
              padding: EdgeInsets.only(right: 10),
              child: Icon(Icons.search),
            ),
            Padding(
              padding: EdgeInsets.only(right: 10),
              child: Icon(Icons.notifications),
            )
          ],
        ),
        body: const WebView(
          initialUrl: "https://www.prothomalo.com",
          javascriptMode: JavascriptMode.unrestricted,
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(
                icon: FaIcon(FontAwesomeIcons.globe), label: 'World'),
            BottomNavigationBarItem(
                icon: Icon(Icons.favorite), label: 'favorite'),
          ],
          backgroundColor: Colors.blue,
          selectedItemColor: Colors.white,
          currentIndex: selectedindex,
          onTap: itemindex,
        ),
      ),
    );
  }
}
