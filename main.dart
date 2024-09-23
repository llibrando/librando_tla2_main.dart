import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

void main() {
  runApp(MaterialApp(
    home: FirstScreen(),
  ));
}

class FirstScreen extends HookWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final counter = useState(0);
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Clicker:',
              style: TextStyle(
                fontSize: 45,
              ),
            ),
            Text(
              'Hello,You clicked:${counter.value}',
              style: TextStyle(
                fontSize: 35,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                OutlinedButton(
                  onPressed: () {
                    if (counter.value > 0) {
                      counter.value--;
                    }
                  },
                  child: Text("Reduce"),
                ),
                OutlinedButton(
                  onPressed: () {
                    counter.value++;
                  },
                  child: Text("Add"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
