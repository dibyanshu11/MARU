import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class ShowLocation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          child: Container(
            padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
            child: TextFormField(
              cursorColor: Colors.black,
              decoration: InputDecoration(
                border: new OutlineInputBorder(
                    borderRadius: new BorderRadius.circular(25.7),
                    borderSide:
                        new BorderSide(width: 0.0, style: BorderStyle.none)),
                hintText: 'Search',
                fillColor: Colors.white,
                suffixIcon: Container(
                  child: IconButton(
                    icon: Icon(
                      Icons.search,
                      color: Colors.black,
                    ),
                    onPressed: () {},
                  ),
                ),
                filled: true,
                contentPadding: EdgeInsets.only(
                  left: 15.0,
                  top: 0.0,
                  bottom: 0.0,
                ),
              ),
            ),
          ),
        ),
        Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              color: Colors.amberAccent,
              shape: BoxShape.circle,
            )),
      ],
    );
  }
}
