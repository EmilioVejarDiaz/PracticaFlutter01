import 'package:flutter/material.dart';

class Perfil extends StatelessWidget {
  const Perfil({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Perfil'),
      ),
       body: SingleChildScrollView(
         child: Column(
          crossAxisAlignment:CrossAxisAlignment.start,
          children: [
           const Padding(
            padding: EdgeInsets.all(16.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              CircleAvatar(
              backgroundColor: Color.fromARGB(255, 0, 57, 21),
              foregroundColor: Colors.white,
              child: Text('Lk76'),
            ),
            SizedBox(
              width: 8.0,
            ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Linkelink', style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold)), 
                  Text('Hace 2 min', style: TextStyle(fontSize: 14, color: Colors.black54))
                ],
              ),
              Spacer(),
              Icon(Icons.more_vert),
            ],),
          ),
          Image.network('https://cdn-icons-png.flaticon.com/512/1408/1408990.png', width:double.infinity, height: 400,),
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: Row(
              children: [
                Icon(Icons.favorite),
                Icon(Icons.message),
                Icon(Icons.ios_share_outlined),
                Spacer(),
                Icon(Icons.save_alt_outlined)
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: Text('Datos Usuario'),
          ),
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: Text('Datos Usuario'),
          ),
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: Text('Datos Usuario'),
          )
         ],
               
         ),
       ),

      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked, // Propiedad correcta en el lugar correcto
     
    );
  }
}
