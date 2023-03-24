import 'package:delivery_app/widgets/appBar_widgets.dart';
import 'package:flutter/material.dart';

class TermsConditionsScreen extends StatelessWidget {
  const TermsConditionsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBarWidgets(title: "Terms & Conditions",centertitle: true,),

    body: Padding(
      padding: const EdgeInsets.all(10.0),
      child: ListView(
        children: [
          Text("Lorem ipsum dolor sit amet, consetetur sadipscing elitr, "
              "sed diam nonumy eirmod tempor invidunt ut labore et dolore magna "
              "aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo"
              " dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus "
              "est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing"
              " elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam "
              "erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. "
              "Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.",style: TextStyle(
            fontFamily: "Inter",
            fontSize: 15,
            // fontStyle: F
          ),textAlign: TextAlign.center,),
          Text("Lorem ipsum dolor sit amet, consetetur sadipscing elitr, "
              "sed diam nonumy eirmod tempor invidunt ut labore et dolore magna "
              "aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo"
              " dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus "
              "est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing"
              " elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam "
              "erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. "
              "Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.",style: TextStyle(
            fontFamily: "Inter",
            fontSize: 15,
            // fontStyle: F
          ),textAlign: TextAlign.center,),
          Text("Lorem ipsum dolor sit amet, consetetur sadipscing elitr, "
              "sed diam nonumy eirmod tempor invidunt ut labore et dolore magna "
              "aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo"
              " dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus "
              "est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing"
              " elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam "
              "erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. "
              "Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.",style: TextStyle(
            fontFamily: "Inter",
            fontSize: 15,
            // fontStyle: F
          ),textAlign: TextAlign.center,),
        ],
      ),
    ),
    );
  }
}
