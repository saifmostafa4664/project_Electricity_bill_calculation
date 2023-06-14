import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Rural extends StatefulWidget {
  const Rural({Key? key}) : super(key: key);

  @override
  _RuralState createState() => _RuralState();
}

class _RuralState extends State<Rural> {
  late double amount;
  late double unitsConsumed;
  String name = 'User';

  @override
  void initState() {
    super.initState();
    unitsConsumed = 0;
    amount = 0;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Electricity Bill Calculator Rural',
          style: TextStyle(fontSize: 17),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              decoration: const InputDecoration(
                labelText: 'Enter Name',
              ),
              onChanged: (value) {
                setState(() {
                  name = value;
                });
              },
            ),
            const SizedBox(height: 20),
            TextField(
              decoration: const InputDecoration(
                labelText: 'Enter Units Consumed',
              ),
              keyboardType: TextInputType.number,
              onChanged: (value) {
                setState(() {
                  unitsConsumed = double.parse(value);
                });
              },
            ),
            const SizedBox(height: 20),
            OutlinedButton(
              onPressed: () {
                setState(() {
                  if (unitsConsumed <= 30 && unitsConsumed >= 0) {
                    amount = unitsConsumed * 3.15.round(); //3.25 is rupees
                  } else if (unitsConsumed >= 31 && unitsConsumed <= 100) {
                    amount = unitsConsumed * 4.40.round();
                  } else if (unitsConsumed >= 101 && unitsConsumed <= 200) {
                    amount = unitsConsumed * 5.95.round();
                  } else {
                    amount = unitsConsumed * 6.80.round();
                  }
                });
              },
              child: const Text('Calculate Bill'),
              style: OutlinedButton.styleFrom(
                primary: Colors.green,
                side: BorderSide(color: Colors.green),
                padding:
                    const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
              ),
            ),
            const SizedBox(height: 20),
            Text(
              'Electricity Bill for $name is: $amount rupees',
              style: const TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'Units you consumed per month: $unitsConsumed',
              style: const TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
