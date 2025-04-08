import 'package:flutter/material.dart';

class CoffeePrefs extends StatefulWidget {
  const CoffeePrefs({super.key});

  @override
  State<CoffeePrefs> createState() => _CoffeePrefsState();
}

class _CoffeePrefsState extends State<CoffeePrefs> {
  int strength = 3;
  int sugars = 3;

  void increaseStrength() {
    setState(() {
      strength++;
    });
    print('inc strength by 1');
  }

  void increaseSugar() {
    setState(() {
      sugars++;
    });
    print('inc sugar by 1');
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            const Text('Strength: '),
            Text(strength.toString()),
            Image.asset(
              'assets/img/coffee_bean.png',
              width: 25,
              colorBlendMode: BlendMode.multiply,
              color: Colors.brown[100],
            ),
            const Expanded(child: SizedBox()),
            FilledButton(
              style: FilledButton.styleFrom(
                backgroundColor: Colors.brown,
                foregroundColor: Colors.white,
              ),
              onPressed: increaseStrength,
              child: const Text('+'),
            ),
          ],
        ),
        const SizedBox(height: 10),
        Row(
          children: [
            const Text('Sugars: '),
            Text(sugars.toString()),
            Image.asset(
              'assets/img/sugar_cube.png',
              width: 25,
              colorBlendMode: BlendMode.multiply,
              color: Colors.brown[100],
            ),
            const Expanded(child: SizedBox()),
            FilledButton(
              style: FilledButton.styleFrom(
                backgroundColor: Colors.brown,
                foregroundColor: Colors.white,
              ),
              onPressed: increaseSugar,
              child: const Text('+'),
            ),
          ],
        ),
      ],
    );
  }
}
