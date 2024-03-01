import 'package:hive/hive.dart';

class AgregarProductoController {
  void agregarProducto(
    String id,
    String nombre,
    String precio,
  ) {
    bool isValid = true;
    if (isValid) {
      var productos = Hive.box('productos');
      productos.put(id, {'id': id, 'nombre': nombre, 'precio': precio});
    }
  }
}