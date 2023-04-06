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
        child: Center(
          child: Column(
            children: [
              const SizedBox(height: 70),
              const CircleAvatar(
                backgroundColor: Colors.black,
                radius: 90,
                child: CircleAvatar(
                  backgroundImage: AssetImage("assets/images/login.png"),
                  radius: 85,
                ),
              ),
              // const Icon(
              //   Icons.android,
              //   size: 100,
              // ),
              const SizedBox(height: 25),
              Text(
                'Welcome back, long time no see',
                style: TextStyle(
                  color: Colors.grey[900],
                  fontSize: 16,
                ),
              ),
              const SizedBox(height: 25),
              MyTextfield(
                controller: usernameController,
                obscureText: false,
                hintText: 'Email',
                prefixIcon: Icon(Icons.alternate_email_sharp),
              ),
              const SizedBox(height: 15),
              MyTextfield(
                controller: passswordController,
                obscureText: true,
                hintText: 'Password',
                prefixIcon: Icon(Icons.lock),
              ),
              const SizedBox(height: 25),
              Mybutton(),
            ],
          ),
        ),
      ),
    );
  }
}
