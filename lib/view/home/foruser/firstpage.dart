import 'package:flutter/material.dart';
import 'package:shopping_app_020/view/home/foruser/displaybox.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
     List<Color> colors = [Colors.blue, Colors.red, Colors.green];
    return Scaffold(
      appBar: AppBar(
        title: const Text("Shopping"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        child: Column(
          children: [
           
            SizedBox(
              height: 150, // You can adjust this height as needed
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 6, // Number of items in the horizontal scroll
                itemBuilder: (context, index) {
              

                  return Padding(
                    padding: const EdgeInsets.only(right: 20), // Add space between items
                    child: DisplayBox(
                      boxColor: colors[index % colors.length], // Rotate colors
                    ),
                  );
                },
              ),
            ),
            const Text("Hello I was here "),
          ],
        ),
      ),
    );
  }
}
