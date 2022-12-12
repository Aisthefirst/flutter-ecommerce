import 'package:ecommer/firstpg.dart';
import 'package:flutter/material.dart';
import 'package:ecommer/home.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = TextEditingController();
    TextEditingController pwdController = TextEditingController();

    var email = "Azhar";
    var pwd = "123";

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text('Rumah Roti'),
      ),
      body: Scaffold(
        body: Container(
          padding: const EdgeInsets.all(16),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Welcome Back',
                  style: TextStyle(
                    fontSize: 27,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                // SizedBox(
                //   height: 14,
                // ),
                Text(
                  'Login to your account',
                  style: TextStyle(
                    fontSize: 17,
                    color: Colors.black.withOpacity(0.5),
                  ),
                ),
                // SizedBox(
                //   height: 36,
                // ),
                Text(
                  'Email',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
                // SizedBox(
                //   height: 12,
                // ),
                Form(
                  child: TextField(
                    controller: emailController,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        hintText: 'Email'),
                  ),
                ),
                // SizedBox(
                //   height: 20,
                // ),
                Text(
                  'Password',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
                // SizedBox(
                //   height: 12,
                // ),
                Form(
                  child: TextField(
                    controller: pwdController,
                    obscureText: true,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        hintText: 'Password'),
                  ),
                ),
                // SizedBox(
                //   height: 13,
                // ),
                // TextButton(
                //     onPressed: () {},
                //     child: Text(
                //       'Forget Password?',
                //       style: TextStyle(
                //           fontWeight: FontWeight.bold,
                //           fontSize: 16,
                //           color: Color.fromARGB(255, 255, 166, 1)),
                //     )),
               
                Center(
                  child: Column(
                    children: [
                      SizedBox(
                        height: 30,
                        width: 150,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Color.fromARGB(255, 255, 166, 1),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                          onPressed: () {
                            if (emailController.text == email) {
                              if (pwdController.text == pwd) {
                                Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const Beranda(),
                                  ),
                                );
                              } else {
                                ScaffoldMessenger.of(context).showSnackBar(
                                    const SnackBar(
                                        content: Text('password salah')));
                              }
                            } else {
                              ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(content: Text('email salah')));
                            }
                          },
                          child: Text('Login'),
                        ),
                      ),
                    ],
                  ),
                ),
              ]),
        ),
      ),
    );
  }
}
