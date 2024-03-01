import 'package:punto_venta_eder/Modelo/productosModel.dart';
import 'package:hive/hive.dart';

class VerProductos{
  List<Producto> obtenerProds() {
    var productos = Hive.box('productos');
    List<Producto> listaProductos = [];

    for (var producto in productos.values) {
      listaProductos.add(Producto(
        id: producto['id'],
        nombre: producto['nombre'],
        precio: double.parse(producto['precio']),
      ));
    }

    return listaProductos;
  }
}