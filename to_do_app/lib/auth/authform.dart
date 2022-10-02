import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';

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

  var _email = '';
  var _password = '';
  var _username = '';
  // we won't show the username if isLoginPage is true. It means that user is in login page. If isLoginPage is false, then user is in signup page. So we will show the username field
  bool isLoginPage = false;

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
            // Edges are touching the screen, so add a padding
            padding: EdgeInsets.all(20),
            child: Form(
              // this formkey is eesential because we need to validate our form, if the user doesn't write the exact password. so for those things we need to
              // ... assign a key.
              key: _formKey,
              child: Column(
                // Aligning the content into center
                mainAxisAlignment: MainAxisAlignment.center,
                // here we are going to define textfields and buttons
                children: [
                  // if isLoginPage is true, then we will show the login text. If isLoginPage is false, then we will show the signup text

                  // username field
                  TextFormField(
                    // because user to define email address in that field.
                    keyboardType: TextInputType.emailAddress,
                    key: ValueKey('username'),
                    // we are using validator to validate the email address.
                    validator: (value) {
                      // if the value is null or empty, then return error message.
                      // if the value length is less than 4, then return error message.
                      // if the value is not null or empty, then return null.
                      if (value!.isEmpty || value.length < 4) {
                        return 'Incorrect Username';
                      }
                      // if the value is not null or empty, then return null.
                      return null;
                    },
                    // we are using onSaved to save the email address.
                    onSaved: (value) {
                      // we are saving the email address in _email variable.
                      var _username = value;
                    },

                    // Adding some decorations.
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: new BorderSide(),
                      ),
                      labelText: "Enter Username",
                    ),
                  ),

                  // why TextFromField ? because we are using Form() widget, so we need to use TextFormField() widget.
                  TextFormField(
                    // because user to define email address in that field.
                    keyboardType: TextInputType.emailAddress,
                    key: ValueKey('email'),
                    // we are using validator to validate the email address.
                    validator: (value) {
                      // if the value is null or empty, then return error message.
                      // if the value is not null or empty, then return null.
                      if (value!.isEmpty || !value.contains('@')) {
                        return 'Please enter a valid email address';
                      }
                      // if the value is not null or empty, then return null.
                      return null;
                    },
                    // we are using onSaved to save the email address.
                    onSaved: (value) {
                      // we are saving the email address in _email variable.
                      var _email = value;
                    },

                    // Adding some decorations.
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: new BorderSide(),
                      ),
                      labelText: "Enter Email",
                    ),
                  ),

                  // for password
                  TextFormField(
                    // because user to define email address in that field.
                    keyboardType: TextInputType.emailAddress,
                    key: ValueKey('password'),
                    // we are using validator to validate the email address.
                    validator: (value) {
                      // if the value is null or empty, then return error message.
                      // if the value is not null or empty, then return null.
                      if (value!.isEmpty || value.length < 7) {
                        return 'Please enter a valid email address with atleast 7 characters';
                      }
                      // if the value is not null or empty, then return null.
                      return null;
                    },
                    // we are using onSaved to save the email address.
                    onSaved: (value) {
                      // we are saving the email address in _email variable.
                      var _password = value;
                    },

                    // Adding some decorations.
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: new BorderSide(),
                      ),
                      labelText: "Enter Password",
                    ),
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
