import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:maaru/core/theme/maaru_style.dart';

class ToggleButton extends StatefulWidget {
  @override
  _ToggleButtonState createState() => _ToggleButtonState();
}

class _ToggleButtonState extends State<ToggleButton> {
  List<bool> isSelected;

  @override
  void initState() {
    isSelected = [true, false];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      ToggleButtons(
        borderColor: Colors.black,
        fillColor: MaaruColors.buttonTextColor,
        // selectedBorderColor: Colors.white,
        selectedColor: Colors.white,
        borderRadius: BorderRadius.circular(
          10,
        ),
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.fromLTRB(54, 15, 54, 15),
            child: Text(
              'Male',
              style: TextStyle(fontSize: 18),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(54, 15, 54, 15),
            child: Text(
              'Female',
              style: TextStyle(fontSize: 18),
            ),
          ),
        ],
        onPressed: (int index) {
          setState(() {
            for (int i = 0; i < isSelected.length; i++) {
              isSelected[i] = i == index;
            }
          });
        },
        isSelected: isSelected,
      ),
    ]);
  }
}
