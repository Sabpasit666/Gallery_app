import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> imageList = [
      'assets/images/1.jpg',
      'assets/images/2.jpg',
      'assets/images/3.jpg',
      'assets/images/4.jpg',
      'assets/images/5.jpg',
      'assets/images/6.jpg',
      'assets/images/7.jpg',
      'assets/images/8.jpg',
      'assets/images/9.jpg',
      'assets/images/10.jpg',
    ];

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            'Gallery MY_Sabpasit',
            style: TextStyle(
              color: Color.fromRGBO(247, 247, 247, 1),
              fontSize: 30,
              fontWeight: FontWeight.bold,
              fontFamily: 'dancingScript',
            ),
          ),
          backgroundColor: Color.fromARGB(255, 0, 102, 9),
        ),
        body: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
          ),
          itemCount: imageList.length,
          itemBuilder: (BuildContext context, int index) {
            return Card(
              color: Colors.deepPurpleAccent,
              child: Center(child: Image.asset(imageList[index])),
            );
          },
        ),
        bottomNavigationBar: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Icon(Icons.home, size: 40),
            Icon(Icons.search, size: 40),
            Icon(Icons.notifications, size: 40),
            Icon(Icons.person, size: 40),
          ],
        ),
      ),
    );
  }
}
