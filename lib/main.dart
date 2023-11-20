import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Operaciones Especiales",
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Operaciones Especiales'),
          backgroundColor: const Color.fromARGB(204, 109, 93, 21),
        ),
        body: _buildBody(),
        bottomNavigationBar: _buildBottomNavigationBar(),
      ),
    );
  }

  Widget _buildBody() {
    return Container(
      color: Color.fromARGB(255, 75, 141, 45),
      child: Column(
        children: [
          Expanded(
            child: SizedBox(
              child: Image.asset(
                'images/mil.jpg',
              ),
            ),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              shape: CircleBorder(), // Hace que el botón sea redondo
              primary:
                  Color.fromARGB(204, 109, 93, 21), // Cambia el color a rojo
              minimumSize: Size(100, 100), // Ajusta el tamaño del botón
            ),
            onPressed: () {
              // Agrega aquí la lógica de incremento del contador
              // Puedes usar setState() para actualizar la interfaz
            },
            child: Icon(Icons.add, size: 50), // Cambia el ícono del botón
          ),
        ],
      ),
    );
  }

  BottomNavigationBar _buildBottomNavigationBar() {
    return BottomNavigationBar(
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.star),
          label: 'OP',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.access_time),
          label: 'Especiales',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.access_alarm),
          label: 'Contra Terrorismo',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.video_call_outlined),
          label: 'Inteligencia',
        ),
      ],
      selectedItemColor: Color.fromARGB(204, 109, 93, 21),
      unselectedItemColor: Color.fromARGB(204, 109, 93, 21),
    );
  }
}
