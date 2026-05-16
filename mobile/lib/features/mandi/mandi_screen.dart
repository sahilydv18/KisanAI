import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

class MandiScreen extends StatelessWidget {
  const MandiScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Mandi Prices')),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          TextField(
            decoration: InputDecoration(
              hintText: 'Search crop (e.g., Wheat)',
              prefixIcon: const Icon(Icons.search),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
              ),
            ),
          ),
          const SizedBox(height: 16),
          SizedBox(
            height: 200,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: FlutterMap(
                options: MapOptions(
                  initialCenter: const LatLng(18.5204, 73.8567),
                  initialZoom: 10,
                ),
                children: [
                  TileLayer(
                    urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
                    userAgentPackageName: 'com.kisanai.app',
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 16),
          const Text('Nearby Mandis', style: TextStyle(fontWeight: FontWeight.bold)),
          const SizedBox(height: 8),
          _MandiCard(name: 'Pune APMC', crop: 'Onion', price: '₹1,650/qtl'),
          _MandiCard(name: 'Solapur Market', crop: 'Jowar', price: '₹2,100/qtl'),
          _MandiCard(name: 'Nashik Market', crop: 'Tomato', price: '₹1,200/qtl'),
        ],
      ),
    );
  }
}

class _MandiCard extends StatelessWidget {
  final String name;
  final String crop;
  final String price;

  const _MandiCard({required this.name, required this.crop, required this.price});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(name),
        subtitle: Text('$crop • $price'),
        trailing: IconButton(
          icon: const Icon(Icons.star_border),
          onPressed: () {},
        ),
      ),
    );
  }
}
