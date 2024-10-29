import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/modules/hotels/entities/hotel.dart';
import 'package:flutter_rating/flutter_rating.dart';

class CustomListReservaciones extends StatelessWidget {
  const CustomListReservaciones({
    super.key,
    required this.hotels,
  });

  final Hotel hotels;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.network(
          hotels.images[0],
          width: 60,
          height: 60,
        ),
        const SizedBox(width: 8),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(hotels.hotel),
            Text(hotels.ubicacion),
            Text(hotels.fechaFin),
            Text(hotels.fechaInicio),
          ],
        ),
        const Spacer(),
        StarRating(
          rating: 5.0, // Calificación fija como ejemplo
          color: Colors.brown[900],
          size: 20.0,
          starCount: 5,
        ),
      ],
    );
  }
}
