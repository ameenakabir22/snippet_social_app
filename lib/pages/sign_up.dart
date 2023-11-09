import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  TextEditingController _usernameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  TextEditingController _confirmPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // text field for email
            TextField(
              decoration: InputDecoration(labelText: 'Email'),
              keyboardType: TextInputType.emailAddress,
              controller: _emailController,
            ),
            SizedBox(height: 16.0),
            // text field for username
            TextField(
              decoration: InputDecoration(labelText: 'Username'),
              controller: _usernameController,
            ),
            SizedBox(height: 16.0),
            // Text field for password
            TextField(
                controller: _passwordController,
                decoration: InputDecoration(labelText: 'Password'),
                obscureText: true),
            SizedBox(
              height: 16.0,
            ),
            // text field for confirm password
            TextField(
                controller: _confirmPasswordController,
                decoration: InputDecoration(labelText: 'Confirm-Password'),
                obscureText: true),
            SizedBox(
              height: 16.0,
            ),
            // sign up button
            ElevatedButton(
              onPressed: () {
                // Perform sign-up logic (e.g., send data to server)
                String username = _usernameController.text;
                String email = _emailController.text;
                String password = _passwordController.text;

                // Implement your sign-up logic here

                //  print the entered values
                print('Username: $username');
                print('Email: $email');
                print('Password: $password');
              },
              child: Text('Sign Up'),
            ),
          ],
        ),
      ),
    );
  }
}
