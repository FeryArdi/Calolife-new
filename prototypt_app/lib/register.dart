import 'package:flutter/material.dart';
import 'package:prototypt_app/register.dart';
//import 'package:firebase_auth/firebase_auth.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  //final FirebaseAuth _auth = FirebaseAuth.instance;
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _usernamelController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          //crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
            alignment: Alignment.centerLeft,
            child: IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () {
                // Aksi yang akan dilakukan saat tombol kembali ditekan
                Navigator.of(context).pop();
              },
            ),
            ),
            SizedBox(height: 16.0),
            Container(
            width: 500,
            padding:
                EdgeInsets.all(60.0), // Memberikan padding ke dalam Container
            margin:
                EdgeInsets.only(top: 0), // Memberikan margin ke luar Container
            child: Center(child: Text(
              "Masuk",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 30,
                  fontFamily: 'Sarala'),),
            ),
            ),
            TextField(
              decoration: InputDecoration(
                labelText: 'Username ',
              ),
              controller: _usernamelController,
            ),
            SizedBox(height: 10.0),
            TextField(
              decoration: InputDecoration(
                labelText: 'Email ',
              ),
              controller: _emailController,
            ),
            SizedBox(height: 10.0),
            
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Password',
              ),
              controller: _passwordController,
            ),
            SizedBox(height: 32.0),
            ElevatedButton(
              onPressed: () {
                // Aksi yang akan dilakukan saat tombol login ditekan
                // Misalnya, verifikasi kredensial dan navigasi ke halaman beranda
              },
              child: Text('Masuk'),
              style: ElevatedButton.styleFrom(
                primary: Color(0xff01ab6c), // Warna latar belakang tombol
                onPrimary: Colors.white, // Warna teks pada tombol
                padding: EdgeInsets.symmetric(
                  horizontal: 50, vertical: 10),
                shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0), // Ubah nilai sesuai kebutuhan untuk membuat bentuk oval
              ),
              ),
            ),
            TextButton(onPressed: (){}, 
            child: Text('Lupa Kata Sandi?',
            style: TextStyle(
              color: Color(0xff01ab6c)
            ),
            ),
            ),
            // Container(
            //   width: 500,
            // padding:
            //     EdgeInsets.all(60.0), // Memberikan padding ke dalam Container
            // margin:
            //     EdgeInsets.only(top: 100), 
            //   alignment: Alignment.bottomCenter,
            //   child: Row(
            //     mainAxisAlignment: MainAxisAlignment.center,
            //     children: [
            //       Text('Belum Punya Akun?'),
            //       TextButton(onPressed: (){
            //         Navigator.push(
            //     context,
            //     MaterialPageRoute(builder: (context) => RegisterPage()),
            //   );
            //       }, 
            //       child: Text(
            //         'Buat Akun',
            //         style: TextStyle(
            //           color: Color(0xff01ab6c)
            //         ),
            //       ),
            //       ),
            //     ],
            //   ),
            // )
          ],
        ),
      ),
      ),
    );
  }


// Future<void> _login() async {
//     try {
//       UserCredential userCredential = await _auth.signInWithEmailAndPassword(
//         username: _usernamwController.text,
//         password: _passwordController.text,
//       );
//       print('Login successful: ${userCredential.user?.email}');
//     } on FirebaseAuthException catch (e) {
//       print('Login failed: $e');
//       // Handle login failure, e.g., show an error message to the user
//     }
//   }
}