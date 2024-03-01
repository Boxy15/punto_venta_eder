import 'package:hive_flutter/hive_flutter.dart';
import 'package:punto_venta_eder/Vista/vista2.dart';
import 'package:flutter/material.dart';

void main() async {
  await Hive.initFlutter();
  var box = await Hive.openBox('productos');
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Mi app',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Mi app'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context){
      return Scaffold(
        appBar: AppBar(
          title: const Text("Mi app"),
        ),
        body: 
          Container(
             child: 
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                   children: <Widget>[
                    nombre(),
                    campoUsuario(),
                    campoPassword(),
                    const SizedBox(height: 10,),
                    ElevatedButton(onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const superpantalla()));
                    },
                    style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue
                ), 
              child: const Text("Enter", style: TextStyle(fontSize: 25, color: Colors.white),),
              )
            ],
           )
         ),
       )
      );
    }  
}

Widget nombre(){
  return const Text("Sign in",style: TextStyle(color: Colors.black, fontSize: 25.0, fontWeight: FontWeight.bold),);
}

Widget campoUsuario(){
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 3),
    child: const TextField(
      decoration: InputDecoration(
        hintText: "User",
        fillColor: Colors.white,
        filled: true,
      ),
    ),
  );
}

Widget campoPassword(){
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 3),
    child: const TextField(
      obscureText: true,
      decoration: InputDecoration(
        hintText: "Password",
        fillColor: Colors.white,
        filled: true
      ),
    ),
  );
}

