import 'package:flutter/material.dart';

class AuthForm extends StatefulWidget {
  const AuthForm({Key? key}) : super(key: key);

  @override
  State<AuthForm> createState() => _AuthFormState();
}

class _AuthFormState extends State<AuthForm> {
  // have to create a global key to access the form state
  // have to define this formkey in Form() widget
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Container(
      // we are returning a container here whose height and width is same as the screen.
      // we are using MediaQuery to get the height and width of the screen.
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: ListView(
        children: [
          Container(
            child: Form(
              key: _formKey,
              child: Column(
                children: [],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
