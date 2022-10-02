import 'package:flutter/material.dart';

class AuthForm extends StatefulWidget {
  const AuthForm({Key? key}) : super(key: key);

  @override
  State<AuthForm> createState() => _AuthFormState();
}

class _AuthFormState extends State<AuthForm> {
// *********************************************************************************** //

  // have to create a global key to access the form state
  // have to define this formkey in Form() widget

  final _formKey = GlobalKey<FormState>();

  // why is it empty ? because user has not entered anything yet

  final _email = '';
  final _password = '';

// *********************************************************************************** //

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
              // this formkey is eesential because we need to validate our form, if the user doesn't write the exact password. so for those things we need to
              // ... assign a key.
              key: _formKey,
              child: Column(
                // here we are going to define textfields and buttons
                children: [
                  // why TextFromField ? because we are using Form() widget, so we need to use TextFormField() widget.
                  TextFormField(
                    // because user to define email address in that field.
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
