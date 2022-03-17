

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
        padding: const EdgeInsets.all(5),
        child: ListView.builder(
          itemBuilder: (context, index) {
            final DataHotel hotel = hotelList[index];
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
                child: Card(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.network(hotel.imageUrl[0], width: 120,),
                      Text(hotel.name)
                    ],
                  ),
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
