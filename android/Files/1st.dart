import 'package:flutter/material.dart';

void main() {
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
late final TextEditingController email;
late final TextEditingController password;
@override
  void initState() {
    // TODO: implement initState
    email=TextEditingController();
    password=TextEditingController();
    super.initState();
  }
  @override
  void dispose() {
    // TODO: implement dispose
    email.dispose();
    password.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:Colors.blue,
        title: const Text('Register'),
      
      
      ),
      body:Column(
      

        children: [
            TextField(
              controller: email,
              decoration: const InputDecoration(hintText: "Enter your email"),
            ),
         TextField(
          controller: password,
           decoration:const InputDecoration(hintText: 'Enter your password'),
         ),
           TextButton(onPressed:() async{},
           child: Text('Register'),),

        ],
      ),
      );
    
  }
}
