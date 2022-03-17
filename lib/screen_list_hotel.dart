

import 'package:flutter/material.dart';
import 'package:quis_e_istian/data_hotel.dart';
import 'screen_detail_hotel.dart';
class ScreenList extends StatelessWidget {
  const ScreenList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("List Hotel"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(1),
        child: ListView.builder(
          itemBuilder: (context, index) {
            final DataHotel hotel = hotelList[index];
            String rating = hotel.stars;
            var myStar = int.parse(rating);
            assert(myStar is int);
            return Card(
              child: InkWell(
                onTap: (){
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context){
                        return DetailScreen(hotel: hotel);
                      })
                  );
                },
                child: Stack(
                  children: <Widget>[
                    Container(
                      height: 180,
                      width: double.infinity,
                        child: Image.network(
                          hotel.imageUrl[0],
                          fit: BoxFit.cover,
                          color: const Color.fromRGBO(0, 0, 0, 0.5),
                          colorBlendMode: BlendMode.darken
                        ),
                      ),
                    Container(
                      padding: EdgeInsets.all(5),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            hotel.name,
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 24,
                            ),
                          ),
                          Row(
                            children:[
                              for (var i=0; i<myStar; i++)
                                const IconStar(),
                            ],
                          ),
                          // Text(hotel.stars),
                          Text(
                              hotel.roomPrice,
                              style: const TextStyle(
                              color: Colors.white,
                              fontSize: 24,
                            ),
                          )
                        ],
                      )
                    ),
                  ],
                ),
              )
            );
          },
          itemCount: 10,
        ),
      ),
    );
  }
}

class IconStar extends StatefulWidget {
  const IconStar({Key? key}) : super(key: key);

  @override
  _IconStarState createState() => _IconStarState();
}

class _IconStarState extends State<IconStar> {
  @override
  Widget build(BuildContext context) {
    return const Icon(
      Icons.star,
      color: Colors.white,
    );
  }
}