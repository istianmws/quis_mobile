
import 'package:flutter/material.dart';
import 'package:quis_e_istian/data_hotel.dart';

class DetailScreen extends StatefulWidget {
  final DataHotel hotel;
  const DetailScreen({Key? key, required this.hotel});

  @override
  _DetailScreenState createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("${widget.hotel.name}"),
      ),
      body: Row(

      ),
    );
  }
}
