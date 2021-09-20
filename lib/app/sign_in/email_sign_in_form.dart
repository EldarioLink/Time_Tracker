import 'package:flutter/material.dart';

class EmailSignInForm extends StatelessWidget {
  const EmailSignInForm({Key? key}) : super(key: key);

  List<Widget> _buildChildren() {
    return [
      TextField(
        decoration: InputDecoration(
          labelText: 'Email',
          hintText: "test@gmailc.om",
        ),
      ),
      SizedBox(height: 8.0),
      TextField(
        decoration: InputDecoration(
          labelText: 'Password',
        ),
        obscureText: true,
      ),
      SizedBox(height: 8.0),
      ElevatedButton(
        onPressed: () {},
        child: Text('Sign in'),
      ),
      SizedBox(height: 8.0),
      TextButton(
        onPressed: () {},
        child: Text('Need an account? Register'),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: _buildChildren(),
      ),
    );
  }
}
