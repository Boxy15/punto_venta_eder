import 'package:flutter/material.dart';
import 'package:punto_venta_eder/Controlador/verProds.dart';
import 'package:punto_venta_eder/Vista/agregarProds.dart';

void main(){
  runApp(vistas3());
}

class vistas3 extends StatelessWidget {
  const vistas3({super.key}); 

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(title: 'Productos',),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => verProdsVista();
}

class verProdsVista extends State<MyHomePage>{
  final VerProductos controller = VerProductos();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ver Productos'),
        backgroundColor: Colors.purple,
      ),
      body: Center(
        child: ListView(
          children: controller.obtenerProds().map((producto) {
            return ListTile(
              leading: Text(producto.id),
              title: Text(producto.nombre),
              subtitle: Text(producto.precio.toString()),
              trailing: const Icon(Icons.arrow_forward_ios),
            );
          }).toList(),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) => AgregarProductoVista(productos: controller.obtenerProds())));
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}

 
