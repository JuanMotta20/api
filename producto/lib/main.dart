import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("MI app", style: TextStyle(color: Colors.blue)),
        backgroundColor: Colors.yellowAccent,
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            Image.network(
              "https://th.bing.com/th/id/R.f3c0bf9d5caca92c1c066145f220a7a8?rik=xGw68BYXJnv%2bXg&pid=ImgRaw&r=0.png",
            ),
            SizedBox(height: 20),
            TextField(
              decoration: InputDecoration(
                labelText: "Nombre",
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),
            TextField(
              decoration: InputDecoration(
                labelText: "Correo electrónico",
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ImageScreen()),
                );
              },
              child: Text("Ver imagen"),
            ),
            SizedBox(height: 10),
            TextField(
              decoration: InputDecoration(
                labelText: "Precio",
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.number,
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                // Acción al presionar el botón
              },
              child: Text("Enviar"),
            ),
          ],
        ),
      ),
    );
  }
}

class ImageScreen extends StatelessWidget {
  const ImageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Imagen")),
      body: Center(
        child: Image.network(
          "https://th.bing.com/th/id/R.f3c0bf9d5caca92c1c066145f220a7a8?rik=xGw68BYXJnv%2bXg&pid=ImgRaw&r=0.png",
        ),
      ),
    );
  }
}
