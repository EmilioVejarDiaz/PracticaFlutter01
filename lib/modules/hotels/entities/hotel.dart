class Hotel {
  final List<String> _images;
  final int _count;
  final String _fechaFin;
  final String _fechaInicio;
  final String _hotel;
  final int _personas;
  final double _rating;
  final String _ubicacion;

  Hotel({
    required List<String> images,
    required int count,
    required String fechaFin,
    required String fechaInicio,
    required String hotel,
    required int personas,
    required double rating,
    required String ubicacion,
  })  : _images = images,
        _count = count,
        _fechaFin = fechaFin,
        _fechaInicio = fechaInicio,
        _hotel = hotel,
        _personas = personas,
        _rating = rating,
        _ubicacion = ubicacion;

  factory Hotel.fromJson(Map<String, dynamic> json) {
    return Hotel(
      images: List<String>.from(json['Images']),
      count: json['count'],
      fechaFin: json['fecha_fin'],
      fechaInicio: json['fecha_inicio'],
      hotel: json['hotel'],
      personas: json['personas'],
      rating: json['rating'],
      ubicacion: json['ubicacion'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'Images': _images,
      'count': _count,
      'fecha_fin': _fechaFin,
      'fecha_inicio': _fechaInicio,
      'hotel': _hotel,
      'personas': _personas,
      'rating': _rating,
      'ubicacion': _ubicacion,
    };
  }

  List<String> get images => _images;
  int get count => _count;
  String get fechaFin => _fechaFin;
  String get fechaInicio => _fechaInicio;
  String get hotel => _hotel;
  int get personas => _personas;
  double get rating => _rating;
  String get ubicacion => _ubicacion;
}
