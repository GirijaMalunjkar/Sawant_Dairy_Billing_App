import 'package:flutter/material.dart';
import 'billing.dart'; // Import your BillingPage file

class LoginPage extends StatelessWidget {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  void _login(BuildContext context) {
    // Your authentication logic goes here

    // For demonstration purposes, assuming authentication is successful
    // Navigate to BillingPage after successful login
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => BillingPage()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              controller: _emailController,
              decoration: InputDecoration(
                labelText: 'Email',
                hintText: 'Enter your email',
              ),
            ),
            SizedBox(height: 20),
            TextField(
              controller: _passwordController,
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Password',
                hintText: 'Enter your password',
              ),
            ),
            SizedBox(height: 40),
            ElevatedButton(
              onPressed: () =>
                  _login(context), // Pass the context to the _login function
              child: Text('Login'),
            ),
          ],
        ),
      ),
    );
  }
}
