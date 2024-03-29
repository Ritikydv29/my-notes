import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/firebase_options.dart';
import 'package:flutter_application_1/views/Registerview.dart';
import 'package:flutter_application_1/views/loginview.dart';
import 'package:flutter_application_1/views/verify_email_view.dart';


void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomePage(),
      routes:{
              '/login/':(context) => const LoginView(),
              '/Register/':(context) => const RegisterView(),
      },
    ));
    
}
class HomePage extends StatelessWidget {
  const HomePage({super.key});

 @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future:Firebase.initializeApp(
        options: DefaultFirebaseOptions.currentPlatform,),
        builder: (context, snapshot) {
          switch (snapshot.connectionState) {
            case ConnectionState.done:
            final User= FirebaseAuth.instance.currentUser;
            if(User!=null){
              if(User.emailVerified){
                      print('Email is verified');
              }
               else{
            return const VerifyEmailView();
              // print('Verify your email');
            }
             return const Text('Done');
            }
            else{
                    return const LoginView();
            }
            default:
            return const CircularProgressIndicator();
          }
          
        },
      );
  }


}


