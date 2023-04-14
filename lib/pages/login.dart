import 'package:flutter/material.dart';
import 'package:xmtk_app/components/com_button.dart';
import '../components/com_textfield.dart';

class Login extends StatelessWidget {
  Login({super.key});

  //text editing controller
  final usernameController = TextEditingController();
  final passswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50],
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                const SizedBox(height: 120),
                const CircleAvatar(
                  backgroundColor: Colors.black,
                  radius: 80,
                  child: CircleAvatar(
                    backgroundImage: AssetImage("assets/images/login.png"),
                    radius: 75,
                  ),
                ),
                // const Icon(
                //   Icons.android,
                //   size: 100,
                // ),
                // const SizedBox(height: 25),
                // Text(
                //   'Welcome back, long time no see',
                //   style: TextStyle(
                //     color: Colors.grey[900],
                //     fontSize: 16,
                //   ),
                // ),
                const SizedBox(height: 15),
                Container(
                  alignment: Alignment.centerLeft,
                  padding: EdgeInsets.all(5),
                  margin: EdgeInsets.symmetric(horizontal: 25),
                  child: Text('Email'),
                ),
                MyTextfield(
                  controller: usernameController,
                  obscureText: false,
                  hintText: 'User@email.com',
                  prefixIcon: Icon(
                    Icons.alternate_email_sharp,
                    color: Colors.black87,
                  ),
                ),
                const SizedBox(height: 15),
                Container(
                  alignment: Alignment.centerLeft,
                  padding: EdgeInsets.all(5),
                  margin: EdgeInsets.symmetric(horizontal: 25),
                  child: Text('Password'),
                ),
                MyTextfield(
                  controller: passswordController,
                  obscureText: true,
                  hintText: '••••••••••••',
                  prefixIcon: Icon(
                    Icons.lock,
                    color: Colors.black87,
                  ),
                ),
                const SizedBox(height: 25),
                Mybutton(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
