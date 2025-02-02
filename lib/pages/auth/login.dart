import 'package:flutter/material.dart';
import 'package:flutter_application_2/combonants/MyTextFilde.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  // Define a TextEditingController for the text field
  final TextEditingController _emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login Page'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Mytextfilde(
              controller: _emailController,
              hintText: "Email",
              obscureText: false, // Email doesn't need to be obscured
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Handle login logic here
                print('Email: ${_emailController.text}');
              },
              child: const Text('Login'),
            ),
          ],
        ),
      ),
    );
  }
}
