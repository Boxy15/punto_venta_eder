import 'package:flutter/material.dart';
import 'package:punto_venta_eder/Controlador/agregarProds.dart';
import 'package:punto_venta_eder/Modelo/productosModel.dart';

class AgregarProductoVista extends StatelessWidget {
  final List<Producto> productos;
  final AgregarProductoController controller = AgregarProductoController();
  final TextEditingController idController = TextEditingController();
  final TextEditingController nombreController = TextEditingController();
  final TextEditingController precioController = TextEditingController();
  AgregarProductoVista({super.key, required this.productos});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Agregar Producto'),
        backgroundColor: Colors.purple,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 20,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              controller: idController,
              decoration: const InputDecoration(
                hintText: "Id del producto",
                fillColor: Colors.white,
                filled: true,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            TextField(
              controller: nombreController,
              decoration: const InputDecoration(
                hintText: "Nombre del producto",
                fillColor: Colors.white,
                filled: true,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            TextField(
              controller: precioController,
              decoration: const InputDecoration(
                hintText: "Precio del producto",
                fillColor: Colors.white,
                filled: true,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  String id = idController.text;
                  String nombre = nombreController.text;
                  String precio = precioController.text;
                  controller.agregarProducto(id, nombre, precio);
                },
                child: const Text('Guardar'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}