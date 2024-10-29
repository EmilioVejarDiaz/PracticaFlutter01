import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/modules/hotels/entities/hotel.dart';
import 'package:flutter_application_1/modules/hotels/widgets/custom_list_reservaciones.dart';
import 'package:flutter_application_1/navigation/reservacion_detallada.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final db = FirebaseFirestore.instance;
  bool _isLoading = true;
  List<Hotel> hotels = [];

  @override
void initState() {
  super.initState();
  try {
    db.collection("reservaciones").snapshots().listen((event) {
      hotels.clear();
      for (var doc in event.docs) {
        final hotel = Hotel.fromJson(doc.data());
        hotels.add(hotel);
      }
      if (mounted) {
        setState(() {
          _isLoading = false;
        });
      }
    });
  } catch (e) {
    print('Error loading hotels: $e');
  }
}


  @override
  Widget build(BuildContext context) {
    if (_isLoading) {
      return const Scaffold(
        body: Center(
          child: CircularProgressIndicator(),
        ),
      );
    }
    return Scaffold(
      appBar: AppBar(
        title: const Text('Inicio'),
      ),
      body: hotels.isNotEmpty
          ? ListView.separated(
              padding: const EdgeInsets.all(16),
              itemCount: hotels.length,
              itemBuilder: (BuildContext context, int index) {
                return GestureDetector(
                  onTap: (){
                    Navigator.push(
                      context, MaterialPageRoute(builder: (context) => 
                      ReservacionDetallada(hotels: hotels[index]),
                      ),
                    );
                  },
                  child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 4.0),
                  child: CustomListReservaciones(hotels: hotels[index]),
                  )
                 
                );
              },
              separatorBuilder: (BuildContext context, int index) {
                return const Divider(
                  thickness: 1,
                  color: Colors.grey,
                );
              },
            )
          : const Center(child: Text('No hay hoteles disponibles')),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.pushNamed(context, '/top'),
        backgroundColor: Colors.pink,
        foregroundColor: Colors.white,
        child: const Icon(Icons.home),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
