import 'package:flutter/material.dart';
import 'package:prototypt_app/register.dart';
import 'package:prototypt_app/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: FirstPage(),
    );
  }
}

class FirstPage extends StatefulWidget {
  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            padding:
                EdgeInsets.all(130.0), // Memberikan padding ke dalam Container
            margin:
                EdgeInsets.only(top: 10), // Memberikan margin ke luar Container
            child: Text(
              "CaloLife",
              style: TextStyle(
                  color: Color(0xff01ab6c),
                  fontSize: 40,
                  fontFamily: 'Sarala',
                  fontWeight: FontWeight.w700),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          ElevatedButton(
            child: Text(
              'Saya Pengguna Baru',
              style: TextStyle(
                fontSize: 17,
              ),
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => RegisterPage()),
              );
            },
            style: ElevatedButton.styleFrom(
              primary: Color(0xff01ab6c), // Warna latar belakang tombol
              onPrimary: Colors.white, // Warna teks pada tombol
              padding: EdgeInsets.symmetric(
                  horizontal: 80, vertical: 10), // Padding tombol
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(9.0), // Bentuk tombol
              ),
            ),
          ),
          SizedBox(
            height: 4,
          ),
          ElevatedButton(
            child: Text(
              'Saya Sudah Punya Akun',
              style: TextStyle(
                fontSize: 17,
              ),
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => LoginPage()),
              );
            },
            style: ElevatedButton.styleFrom(
              primary: Colors.white, // Warna latar belakang tombol
              onPrimary: Color(0xff01ab6c), // Warna teks pada tombol
              padding: EdgeInsets.symmetric(
                  horizontal: 67, vertical: 10), // Padding tombol
              shape: RoundedRectangleBorder(
                side: BorderSide(color: Color(0xff01ab6c)),
                borderRadius: BorderRadius.circular(9.0), // Bentuk tombol
              ),
            ),
          ),
        ],
      ),
    );
  }
}
