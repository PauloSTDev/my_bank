import 'package:flutter/material.dart';
import 'package:flutter_swiper_null_safety/flutter_swiper_null_safety.dart';
import 'package:my_bank/model/data_images.dart';

class HomePage extends StatefulWidget {
  final String title = "My Bank";

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title,
            style: TextStyle(
                color: Colors.black87,
            ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: Swiper(
              itemCount: 2,
              viewportFraction: 0.8,
              scale: 0.9,
              layout: SwiperLayout.DEFAULT,
              control: SwiperControl(),
              pagination: SwiperPagination(),
              itemBuilder: (BuildContext context, int index){
                return ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image(
                    image: AssetImage(images1[index]),
                    fit: BoxFit.cover,
                  ),
                );
              },
            ),
          ),
          Expanded(
            flex: 3,
            child: ListWheelScrollView(
              itemExtent: 150,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                  ),
                  child: Center(
                    child: Text(
                      "Teste Scroll 1",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 45,
                      ),
                    ),
                  ),
                ),Container(
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                  ),
                  child: Center(
                    child: Text(
                      "Teste Scroll 2",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 45,
                      ),
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                  ),
                  child: Center(
                    child: Text(
                      "Teste Scroll 3",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 45,
                      ),
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                  ),
                  child: Center(
                    child: Text(
                      "Teste Scroll 4",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 45,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}