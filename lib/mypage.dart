import 'package:flutter/material.dart';
import 'package:project_c_out/rural.dart';

import 'electricitybill.dart';

class MyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Choose the region'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ElectricityBill()),
                );
              },
              child: Text(
                'Urban',
                style:
                    TextStyle(color: const Color.fromARGB(255, 255, 255, 255)),
              ),
              style: ElevatedButton.styleFrom(
                primary: Color.fromARGB(255, 22, 53, 233),
                padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
              ),
            ),
            SizedBox(height: 20),
            OutlinedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Rural()),
                );
              
              },
              child: Text('Rural'),
              style: OutlinedButton.styleFrom(
                primary: Colors.green,
                side: BorderSide(color: Colors.green),
                padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
