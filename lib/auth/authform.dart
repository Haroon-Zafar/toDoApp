import 'package:flutter/material.dart';

class AuthForm extends StatefulWidget {
  const AuthForm({Key? key}) : super(key: key);

  @override
  State<AuthForm> createState() => _AuthFormState();
}

class _AuthFormState extends State<AuthForm> {
  // ---------------------------------------------------- //

  final _formKey = GlobalKey<FormState>();
  final _email = '';
  final _password = '';

  // ---------------------------------------------------- //

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.4,
      width: MediaQuery.of(context).size.width * 0.8,
      child: ListView(
        children: [
          Container(
            child: Form(
              // this key is for validating Form Data
              key: _formKey,
              child: Column(
                children: [
                  TextFormField(
                    keyboardType: TextInputType.emailAddress,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
