import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:maaru/core/widget/alert_manager.dart';
import 'package:maaru/core/widget/widgets.dart';

class DisclaimerModal extends StatelessWidget {
  final Function onBackgroundTap;
  final Function onSuccess;
  DisclaimerModal({this.onBackgroundTap, this.onSuccess});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 320,
      child: Align(
        alignment: Alignment.center,
        child: Container(
          decoration: BoxDecoration(
            //   color: KompanionStyle.colors.modalBg,
            borderRadius: BorderRadius.circular(15),
            boxShadow: [
              BoxShadow(
                  color: Colors.black.withOpacity(0.2),
                  blurRadius: 10,
                  spreadRadius: 10)
            ],
          ),
          height: 340,
          child: Padding(
            padding: EdgeInsets.only(left: 20, right: 20),
            child: Column(
              children: [
                Padding(
                    padding: EdgeInsets.only(top: 20),
                    child: Text(
                      "Disclaimer",
                      // style: KompanionStyle.text.medium,
                    )),
                SizedBox(
                  height: 15,
                ),
                Text(
                  "Your Kompanion is powered by AI. Sometimes the text generated by your AI Kompanion can be offensive and insensitive in nature. If you are okay with this and 18+, please continue.",
                  // style: KompanionStyle.text.small,
                ),
                SizedBox(
                  height: 25,
                ),
                ThemedButton( onPressed: onSuccess),
                SizedBox(
                  height: 15,
                ),
                ThemedButtonGey(
                    text: "Cancel",
                    onPressed: () {
                      AlertManager.dismissAll();
                    })
              ],
            ),
          ),
        ),
      ),
    );
  }
}
