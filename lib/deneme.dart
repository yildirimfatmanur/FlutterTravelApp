import 'package:flutter/material.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  final TextEditingController _usernameController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TextField(
          controller: _usernameController,
          obscureText: false,
          enableSuggestions: false,
          autocorrect: false,
          cursorColor: Colors.white,

          style: TextStyle(color: Colors.white.withOpacity(0.9)),
          decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Color(0xFF9CA6FF)),
              borderRadius: BorderRadius.circular(15),
            ),
            prefixIcon: Icon(
              Icons.person_outline,
              color: Colors.white70,
            ),
            labelText: "Enter User Name",
            labelStyle: TextStyle(color: Colors.white.withOpacity(0.9)),
            filled: true,
            floatingLabelBehavior: FloatingLabelBehavior.never,

            border: OutlineInputBorder(
              borderSide: BorderSide(color: Color(0xFF9CA6FF)),
              borderRadius: BorderRadius.circular(15),

            ),
          ),
          keyboardType:TextInputType.name,
          onChanged: (value){
          }
      ),
    );
  }
}



