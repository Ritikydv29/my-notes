import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class RegisterView extends StatefulWidget {
  const RegisterView({super.key});

  @override
  State<RegisterView> createState() => _RegisterViewState();
}

class _RegisterViewState extends State<RegisterView> {
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
      appBar: AppBar(title: const Text('Register'),
      ),
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
                    final userCredential=await FirebaseAuth.instance.createUserWithEmailAndPassword(
                  email: email,
                  password: password);
                  print(userCredential);
                } on FirebaseAuthException catch (e) {
                  if(e.code=='email-already-in-use'){
                     print('email-already-in-use');
                  }
                  else if(e.code=='weak-password'){
                    
                    print("weak-password");
                  }
                  // print(e.code);
                  else if(e.code=='invalid-email'){
                    print(' invalid-email');
                  }
                
                }
           
               },
               child: Text('Register'),),
                 TextButton(onPressed:(){
             Navigator.pushNamed(context,'/login/');
             }, child: const Text('Registered! Now login')),
      
        
            ],
          ),
    );
    
  }
}