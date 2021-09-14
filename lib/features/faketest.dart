import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var image = new Image.network("http://www.gstatic.com/webp/gallery/1.jpg");
    var container = new Container(
      child: image,
      padding: EdgeInsets.only(left: 5.0, right: 5.0, top: 5.0, bottom: 5.0),
      width: 200.0,
      height: 200.0,
    );

    return Scaffold(
      body: Center(
          child: new ListView.builder(
        itemBuilder: (context, index) {
          if (index == 0) {
            //first row is horizontal scroll
            var singleChildScrollView = SingleChildScrollView(
                child: Row(
                  children: <Widget>[
                    container,
                    container,
                    container,
                  ],
                ),
                scrollDirection: Axis.horizontal);
            return singleChildScrollView;
          } else {
            return new Row(
              children: <Widget>[container, container],
            );
          }
        },
        itemCount:
            1, // 9 rows of AllGenresAndMoods + 1 row of PopularGenresAndMoods
      )),
    );
  }
}

