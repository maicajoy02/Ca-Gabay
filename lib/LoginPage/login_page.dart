import 'package:flutter/material.dart';
import '../Contants/constants.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  final _formKey = GlobalKey<FormState>();

  bool _isObscure3 = true;
  bool rememberMe = false;
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(80.0),
          child: AppBar(backgroundColor: cgBlue),
        ),
        body: Container(
          color: cgBGColor,
          child: Center(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20.0),
              child: Container(
                color: cgWhite,
                width: 500.0,
                height: 600.0,
                padding: EdgeInsets.all(20.0),
                child: Form(
                  key: _formKey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'CA-GABAY',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                        ),
                      ),
                      SizedBox(
                          height: MediaQuery.of(context).size.height * 0.1),
                      TextFormField(
                        textInputAction: TextInputAction.next,
                        controller: _emailController,
                        onSaved: (value) {
                          _emailController.text = value!;
                        },
                        decoration: bLoginFormat.copyWith(
                          labelText: 'Username',
                          labelStyle: TextStyle(color: cgBlack),
                          hintText: 'Enter your Username',
                          prefixIcon: IconTheme(
                            data: IconThemeData(color: cgBlack),
                            child: Icon(Icons.person_outline),
                          ),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter your username';
                          }
                          return null;
                        },
                        style: TextStyle(color: cgBlack, fontSize: 16.0),
                      ),
                      SizedBox(
                          height: MediaQuery.of(context).size.height * 0.03),
                      TextFormField(
                        controller: _passwordController,
                        obscureText: _isObscure3,
                        onSaved: (value) {
                          _passwordController.text = value!;
                        },
                        decoration: bLoginFormat.copyWith(
                          labelText: 'Password',
                          hintText: 'Enter your Password',
                          prefixIcon: IconTheme(
                              data: IconThemeData(color: cgBlack),
                              child: Icon(Icons.lock_outline_rounded)),
                          suffixIcon: GestureDetector(
                            onTap: () {
                              setState(() {
                                _isObscure3 = !_isObscure3;
                              });
                            },
                            child: _isObscure3
                                ? Icon(Icons.visibility_off_outlined)
                                : Icon(Icons.visibility_outlined),
                          ),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter your password';
                          }
                          return null;
                        },
                        style: TextStyle(color: cgBlack, fontSize: 16.0),
                        textInputAction: TextInputAction.next,
                      ),
                      TextButton(
                          onPressed: () {}, 
                          child: Text('Forgot Password?')),
                      SizedBox(
                          height: MediaQuery.of(context).size.height * 0.04),
                      TextButton(
                        onPressed: () {
                          // Add your login logic here
                        },
                        style: ButtonStyle(
                            padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                                EdgeInsets.symmetric(horizontal: 100, vertical: 20)),
                            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15))),
                            backgroundColor: MaterialStateProperty.all<Color>(cgBlue)
                        ),
                        child: Text(
                          'LOGIN',
                          style: TextStyle(color: cgWhite),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
        bottomNavigationBar: Container(
          height: 20.0,
          color: cgBlue,
        ),
      ),
    );
  }
}
