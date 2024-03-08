import 'package:flutter/material.dart';
// String fullName(String firstName,String lastName ){
//   return '$firstName $lastName';
// }
//another way of function

// String printmyName(String firstName,String lastName ) =>
//   '$firstName $lastName';

void main() {
  // const name=20;
  runApp(const MyApp());
}

// void check(String? A,String? b,String? c){
//   final name=A??b;
//   print(name);
//   String? a=A;
 
//   print(a);
//    a??=b;
//   print(a);
// }

// void NullAble(){
//   const String? value="rit";
//   const String? h=null;
  

//   // value="rit";
//  const String fname="ritik";
//   const n=h??value??fname;
//     print(n);
//   // print(value);
//   // // value=null;
//   //   print(value);
//   // List<String?>?names=['foo','ji','hui',null];//nullablelist of nullable strings
 
//   // print(names);
//   //   names=null;
//   //     print(names);

// }

// void set(){
//   var st={'foo','bar'};//set
//   st.add('foo');
//   st.add('hello');
//   // st.add(1);
//   print(st.length);
//   const person={'age':20,'foo':'hey'};}

// void mapp(){

//   var personn={'age':20};//map
//   print(personn);
//   personn['age']=10;
//   print(personn);
//   // print(personn['foo']);
// }

// class test{
//   void move(){
//     print("I m moving");
//   }
// }

// void test(){
//  final meow= Cat("Fluffer");
//  print(meow.name);
//  meow.fun();
// }


// extension Run on Cat{
//       void fun(){
//         print("Cat $name is running");
//       }
// }

  // print(names.length);
  //   print('hello');
  //   final name='foo';
  //   final hey=name*20;
  //   print(hey);
  //   print('object');

// class Cat{
//     final String name;
//   Cat(this.name);

// }

// class Cat extends test{
//   final String name;
//   Cat(this.name);
  // @override
  // bool operator==(covariant Cat other)=> other.name==name;

  // @override
  // int get hashCode=>name.hashCode;
// }

Future<int> multiplyby2 (int a) async{
    return await Future.delayed(const Duration(seconds: 3),(){
      return a*2;
    });

}

void test() async{
      
       final result =await(multiplyby2(10));
        print("hello");
       print(result);
}
class MyApp extends StatelessWidget {
  

  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    test();
    // mapp();

     
    //  set();

    // final fluffer1=Cat('Animal');
    // final fluffer=Cat('Animal');
    // print(fluffer.name);
    // fluffer1.fun();
    // if(fluffer==fluffer1){
    //   print(true);
    // }
    // else{
    //   print(false);
    // }
    // fluffer.move();
    
    // mapp();
    // set();
    // NullAble();
    // check(null,'foo','jii');
    // print(fullName('Ritik','Yadav'));
    // print(printmyName('Ritik','Yadav'));
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {

    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // TRY THIS: Try changing the color here to a specific color (to
        // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
        // change color while the other colors stay the same.
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          //
          // TRY THIS: Invoke "debug painting" (choose the "Toggle Debug Paint"
          // action in the IDE, or press "p" in the console), to see the
          // wireframe for each widget.
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
