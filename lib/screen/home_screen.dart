import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Button"),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.resolveWith(
                    (Set<MaterialState> states) {
                  if (states.contains(MaterialState.pressed)) {
                    return Colors.blue;
                  }
                  return Colors.amber;
                }),
                foregroundColor: MaterialStateProperty.resolveWith(
                    (Set<MaterialState> states) {
                  if (states.contains(MaterialState.pressed)) {
                    return Colors.white;
                  }
                  return Colors.red;
                }),
                padding: MaterialStateProperty.resolveWith(
                  (Set<MaterialState> states) {
                    if (states.contains(MaterialState.pressed)) {
                      return const EdgeInsets.all(100);
                    }
                    return const EdgeInsets.all(20);
                  },
                ),
                shape: MaterialStateProperty.resolveWith(
                  (Set<MaterialState> states) {
                    if (states.contains(MaterialState.pressed)) {
                      return CircleBorder();
                    }
                    return RoundedRectangleBorder(
                        borderRadius: BorderRadius.zero,
                        side: BorderSide(color: Colors.red));
                  },
                ),
              ),
              child: Text("Button Style"),
            ),


            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
                foregroundColor: Colors.grey,
                shadowColor: Colors.green,
                elevation: 10,
                textStyle:
                    const TextStyle(fontWeight: FontWeight.w700, fontSize: 30),
                padding: EdgeInsets.all(32),
                side: const BorderSide(
                  color: Colors.black,
                  width: 4,
                ),
              ),
              child: Text("Elevated Button"),
            ),
            OutlinedButton(
              onPressed: () {},
              style: OutlinedButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: Colors.black,
                elevation: 10,
              ),
              child: Text("Outlined Button"),
            ),
            TextButton(
              onPressed: () {},
              style: TextButton.styleFrom(
                foregroundColor: Colors.brown,
                backgroundColor: Colors.yellow,
              ),
              child: Text("Text Button"),
            ),
          ],
        ),
      ),
    );
  }
}
