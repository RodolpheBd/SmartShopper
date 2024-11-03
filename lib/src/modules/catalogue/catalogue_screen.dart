import 'package:flutter/material.dart';

import 'package:smart_shopper/src/modules/home/home_screen.dart';

class CatalogueScreen extends StatelessWidget {
  const CatalogueScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Catalogue'),
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            leading: const Icon(Icons.shopping_cart),
            title: const Text('Product 1'),
            subtitle: const Text('Description of Product 1'),
            trailing: const Icon(Icons.arrow_forward),
            onTap: () {
              // Navigate to product details
            },
          ),
          ListTile(
            leading: const Icon(Icons.shopping_cart),
            title: const Text('Product 2'),
            subtitle: const Text('Description of Product 2'),
            trailing: const Icon(Icons.arrow_forward),
            onTap: () {
              // Navigate to product details
            },
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const HomeScreen()),
              );
            },
            child: const Text('Return to Home'),
          ),
        ],
      ),
    );
  }
}
