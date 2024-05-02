import 'package:flutter/material.dart';
import 'review.dart';

class ReviewList extends StatelessWidget {
  const ReviewList({Key? key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'All reviews', // Texto aumentado
          style: TextStyle(fontSize: 20), // Aumentar el tamaño del texto
        ),
        Row(
          children: <Widget>[
            Icon(Icons.star, color: Colors.yellow), // Estrella rellena
            Icon(Icons.star, color: Colors.yellow), // Estrella rellena
            Icon(Icons.star, color: Colors.yellow), // Estrella rellena
            Icon(Icons.star, color: Colors.yellow), // Estrella rellena
            Icon(Icons.star, color: Colors.yellow), // Estrella rellena
            Icon(Icons.star_half,
                color: Colors.yellow), // Estrella semi rellena
            Icon(Icons.star_border, color: Colors.yellow), // Estrella vacía
          ],
        ),
        Review(
          pathImage: 'assets/images/girl.jpg',
          name: 'Varuna Yasas',
          information:
              '★★★★☆ 1 review 5 photos', // Ajuste para mostrar las estrellas
          comment: 'There is an amazing place in Siri Lanka',
        ),
        Review(
          pathImage: 'assets/images/ann.jpg',
          name: 'Varuna Yasas',
          information:
              '★★★★☆ 1 review 5 photos', // Ajuste para mostrar las estrellas
          comment: 'There is an amazing place in Siri Lanka',
        ),
        Review(
          pathImage: 'assets/images/people.jpg',
          name: 'Varuna Yasas',
          information:
              '★★★★☆ 1 review 5 photos', // Ajuste para mostrar las estrellas
          comment: 'There is an amazing place in Siri Lanka',
        ),
      ],
    );
  }
}
