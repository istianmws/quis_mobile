
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
    var myStar = int.parse(widget.hotel.stars);
    assert(myStar is int);
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
      body: Column(
        children: [
          Container(
            height: 280,
            padding: const EdgeInsets.fromLTRB(5,10,5,10),
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                      for (var i = 0; i < widget.hotel.imageUrl.length ; i++)
                        Container(
                          padding: const EdgeInsets.only(left: 10, right: 5),
                          width: 400,
                          child: Image.network(
                            widget.hotel.imageUrl[i],
                            fit: BoxFit.cover,
                          ),
                        ),
                  ],
                ),
          ),
          Center(
            child: Column(
              children: [
                Padding(
                    padding: const EdgeInsets.fromLTRB(0,10,0,10),
                    child: Text(
                      widget.hotel.name,
                      style: const TextStyle(
                        fontSize: 16,
                      ),
                    ),
                ),
                Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      for(var i=0; i<myStar; i++)
                          const IconStar(),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0,10,0,2),
                  child: Text(
                    widget.hotel.location,
                    style: const TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0,3,0,2),
                  child: Text(
                    'Harga per Kamar : ${widget.hotel.roomPrice}',
                    style: const TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.fromLTRB(0,3,0,2),
                  child: Text(
                    'Link Pemesanan :',
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ),
              ],
            ),
          ),
            ],
      ),
    );
  }
}
class IconStar extends StatefulWidget {
  const IconStar( {Key? key}) : super(key: key);

  @override
  _IconStarState createState() => _IconStarState();
}

class _IconStarState extends State<IconStar> {
  @override
  Widget build(BuildContext context) {
    return const Icon(
      Icons.stars_rounded,
      color: Colors.black,

    );
  }
}