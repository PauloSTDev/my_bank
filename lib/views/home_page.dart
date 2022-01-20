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
      body:
        Swiper(
          itemCount: 2,
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
    );
  }
}