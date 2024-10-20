import 'package:flutter/material.dart';
import '../models/item.dart';

class DetailScreen extends StatelessWidget {
  final Item item;

  DetailScreen({required this.item});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(item.title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(item.image, width: double.infinity, height: 200, fit: BoxFit.cover),
            SizedBox(height: 10),
            Text(item.title, style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            SizedBox(height: 10),
            Text(item.description, style: TextStyle(fontSize: 16)),
            SizedBox(height: 20),
            Text('Harga: Rp ${item.price}', style: TextStyle(fontSize: 20, color: Colors.green)),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Logika untuk menambahkan ke keranjang atau membeli
              },
              child: Text('Beli Sekarang'),
            ),
            ElevatedButton(
              onPressed: () {
                // Logika untuk share item
              },
              child: Text('Share'),
            ),
          ],
        ),
      ),
    );
  }
}
