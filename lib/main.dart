import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Demo Widget Flutter',
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  _HalamanHome createState() => _HalamanHome();
}

class _HalamanHome extends State<HomeScreen> {
  String inputEmail = "";
  String inputNama = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('IRiz-Store'),
        backgroundColor: Colors.teal,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            //ini untuk text
            Text(
              'Hallo, Selamat datang di IRiz-Store',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),

            SizedBox(height: 20),

            //image dari network
            Image.network(
              'https://i.pinimg.com/736x/1c/57/93/1c57937487a39b7e84cdba3fe054eeeb.jpg',
              height: 100,
            ),

            SizedBox(height: 20),

           //input dengan tipe text
            TextField(
              onChanged: (value) {
                setState(() {
                  inputEmail = value;
                });
              },
              decoration: InputDecoration(
                labelText: 'Masukan Email',
                border: OutlineInputBorder(),
              ),
            ),
            
            SizedBox(height: 20),

            TextField(
              onChanged: (value) {
                setState(() {
                  inputNama = value;
                });
              },
              decoration: InputDecoration(
                labelText: 'Masukan Nama',
                border: OutlineInputBorder(),
              ),
            ),

            SizedBox(height: 20),

            //row
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Lupa Email?"),
                Text(
                  inputEmail,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(
                  inputNama,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),

            SizedBox(height: 20),

            //button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    inputNama = ''; //ini untuk menghapus teks
                  });
                },
                child: Text('Masuk'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
