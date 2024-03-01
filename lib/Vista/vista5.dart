import "package:flutter/material.dart";

class vistas5 extends StatelessWidget {
  const vistas5({super.key});

 @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Ventas"),
      backgroundColor: Colors.purple,),
      body: Container(
         child: const Column(
          children: <Widget>[
            Center(
              child: Text("Ventas totales",style: TextStyle(color: Colors.black, fontSize: 25.0, fontWeight: FontWeight.bold),),
            )
          ],
         )
      ),
    );
  }
}