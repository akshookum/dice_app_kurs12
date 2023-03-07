import 'dart:developer' as math;
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int solDice = 4;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orangeAccent,
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Center(child: Text('Dice App')),
      ),
      body: Center(
        child: Row(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: InkWell(
                    onTap: () {
                      setState(() {});
                      final random = Random().nextInt(6) + 1;
                      solDice = random;
                      math.log('Sol jak basylat');
                    },
                    child: Image.asset('images/dice$solDice.png')),
              ),
            ),
            Expanded(
              child: SizedBox(
                height: 190,
                width: 190,
                child: Image.asset('images/dice5.png'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
