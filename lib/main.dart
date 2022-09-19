import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';


void main() {
  runApp(const MyApp());
}



class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}
class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Halaman Login Kawand'),
          backgroundColor: Colors.blue,

        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              ('assets/logoflut.png'),
              width: 50,
              height: 50,
            ),
            SizedBox(height: 30),

            Padding(
              padding: const EdgeInsets.symmetric(vertical: 30),
              child: Form(
                  child: Column(
                    children: [

                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 35),
                        child: TextFormField(
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                            labelText: 'Email',
                            hintText: 'Masukkan Email Dulu Deck!',
                            contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                            border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
                          ),
                          onChanged: (String value) {

                          },
                        ),
                      ),

                      SizedBox(height: 15),

                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 35),
                        child: TextFormField(
                          obscureText: true,
                          decoration: InputDecoration(
                            labelText: 'Password',
                            hintText: 'Masukkan Password Dulu Deck!',
                            contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                            border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
                          ),
                          onChanged: (String value) {

                          },
                        ),
                      ),
                      SizedBox(height: 30,),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 35),
                        child: SizedBox(
                          width: 1500,
                          height: 35,
                          child: ElevatedButton(

                            onPressed: () {
                            },
                            child: Text('Login'),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 35),
                        child: SizedBox(
                          width: 1500,
                          height: 35,
                          child: TextButton (

                            onPressed: () {
                            },
                            child: Text('Forgot password?'),
                          ),
                        ),
                      ),

                    ],
                  )),
            )
          ],
        ),
      ),
    );
  }
}

