import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/src/widgets/navigator.dart';
import 'package:flutter/material.dart';
// import 'dart:core';



class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
   late final TextEditingController _email;
late final TextEditingController _password;
@override
  void initState() {
    // TODO: implement initState
    _email=TextEditingController();
    _password=TextEditingController();
    super.initState();
  }
  @override
  void dispose() {
    // TODO: implement dispose
    _email.dispose();
    _password.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(title: const Text('Login')),

      body: Column(
          
        
            children: [
                TextField(
                  obscureText: false,
                  enableSuggestions: false,
                  autocorrect: false,
                  controller: _email,
                  keyboardType: TextInputType.emailAddress,
                  decoration: const InputDecoration(hintText: "Enter your email"),
                ),
             TextField(
                obscureText: true,
                  enableSuggestions: false,
                  autocorrect: false,
              controller: _password,
               decoration:const InputDecoration(hintText: 'Enter your password'),
             ),
               TextButton(onPressed:(
               ) async{
               
                final email=_email.text;
                final password=_password.text;
        try {
           final userCredential=await FirebaseAuth.instance.signInWithEmailAndPassword(
                  email: email,
                  password: password);
                  print(userCredential);
        } on FirebaseAuthException catch(e) {
         if(e.code=='invalid-credential'){
                print('email and password does not match');
         }  
        }      },
               child: Text('login'),)
              ,
               TextButton(onPressed:(){
               Navigator.pushNamed(context,'/Register/');
               }, child: const Text('NOt Yet Registered')),
        
            ],
          ),
    );
    
  }


}
  