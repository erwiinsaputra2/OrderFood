import 'package:flutter/material.dart';
import 'detail_screen.dart';
import '../models/item.dart';

class ListScreen extends StatelessWidget {
  final List<Item> items = [
    Item(
      title: 'Nasi Goreng',
      description: 'Nasi goreng dengan bumbu khas Indonesia.',
      image: 'assets/nasigoreng.png',
      price: 20000,
    ),
    Item(
      title: 'Sate Ayam',
      description: 'Sate ayam dengan bumbu kacang.',
      image: 'assets/sate.png',
      price: 25000,
    ),
    // Tambahkan item lainnya di sini
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Daftar Makanan'),
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Image.asset(items[index].image, width: 50, height: 50, fit: BoxFit.cover),
            title: Text(items[index].title),
            subtitle: Text(items[index].description),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailScreen(item: items[index]),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
