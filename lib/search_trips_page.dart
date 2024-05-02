import 'package:flutter/material.dart';

class SearchTripsPage extends StatelessWidget {
  const SearchTripsPage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SEARCH'), // Texto: SEARCH
        centerTitle: true,
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              const Color(0xFF4268D3),
              const Color(0xFF1976D2)
            ], // Fondo degradado
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Center(
          // Centrar contenido verticalmente
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextField(
                  textAlign:
                      TextAlign.center, // Centrar el texto del campo de entrada
                  decoration: InputDecoration(
                    hintText:
                        'Sinchigalo Charles', // Control para ingreso de datos
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                  ),
                ),
                const SizedBox(height: 20.0),
                ElevatedButton(
                  onPressed: () {
                    // Acción al presionar el botón de búsqueda
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                          content: Text('Búsqueda realizada Charles')),
                    );
                  },
                  child: const Text('Buscar'), // Botón de búsqueda
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
