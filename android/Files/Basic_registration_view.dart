import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_application_1/firebase_options.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    ));
}
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
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
    return Scaffold(
      appBar: AppBar(
        backgroundColor:Colors.blue,
        title: const Text('Register'),
      
      
      ),
      body:FutureBuilder(
        future:Firebase.initializeApp(
        options: DefaultFirebaseOptions.currentPlatform,),
        builder: (context, snapshot) {
          switch (snapshot.connectionState) {
            case ConnectionState.done:
            return  Column(
        
      
          children: [
              TextField(
                obscureText: true,
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
      
              
          final userCredential=await FirebaseAuth.instance.createUserWithEmailAndPassword(
                email: email,
                password: password);
                print(userCredential);
             },
             child: Text('Register'),),
      
          ],
        );
            default:
            return const Text("loading");
          }
          
        },
      ),
      );
    
  }
}
