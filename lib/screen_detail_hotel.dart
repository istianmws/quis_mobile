
import 'package:flutter/material.dart';
import 'package:quis_e_istian/data_hotel.dart';

class DetailScreen extends StatefulWidget {
  final DataHotel hotel;
  const DetailScreen({Key? key, required this.hotel});

  @override
  _DetailScreenState createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  bool isFavorite = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("${widget.hotel.name}"),
        actions: [
          IconButton(
            onPressed: () {
              setState(() {
                isFavorite = !isFavorite;
              });
            },
            icon: (isFavorite)
                ? Icon(Icons.favorite)
                : Icon(Icons.favorite_border),
          ),
        ],
      ),
      body: Row(

      ),
    );
  }
}
