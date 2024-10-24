import 'package:flutter/material.dart';
import 'package:shopping_app_020/widgets/roundbutton.dart';

class UpdateInfo extends StatefulWidget {
  UpdateInfo({super.key});

  @override
  State<UpdateInfo> createState() => _UpdateInfoState();
}

class _UpdateInfoState extends State<UpdateInfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Update Info"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 200,
              width: 200,
            ),
           
            RoundButton(title: "Complete", onPress: () {})
          ],
        ),
      ),
    );
  }
}
