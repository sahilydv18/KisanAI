import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class YieldScreen extends StatelessWidget {
  const YieldScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Yield Prediction')),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          const Text('Enter Details', style: TextStyle(fontWeight: FontWeight.bold)),
          const SizedBox(height: 12),
          TextField(decoration: _input('Crop Type (e.g., Rice)')),
          const SizedBox(height: 12),
          TextField(decoration: _input('Land Area (acres)')),
          const SizedBox(height: 12),
          TextField(decoration: _input('Region')),
          const SizedBox(height: 12),
          TextField(decoration: _input('Sowing Date')),
          const SizedBox(height: 16),
          FilledButton(onPressed: () {}, child: const Text('Predict Yield')),
          const SizedBox(height: 24),
          const Text('Prediction', style: TextStyle(fontWeight: FontWeight.bold)),
          const SizedBox(height: 12),
          Card(
            child: ListTile(
              title: const Text('Expected Yield'),
              subtitle: const Text('24.5 quintals (Confidence 78%)'),
              trailing: const Icon(Icons.insights),
            ),
          ),
          Card(
            child: ListTile(
              title: const Text('Risk Factors'),
              subtitle: const Text('Rainfall deficit, late sowing'),
            ),
          ),
          const SizedBox(height: 16),
          SizedBox(
            height: 200,
            child: LineChart(
              LineChartData(
                lineBarsData: [
                  LineChartBarData(
                    spots: const [
                      FlSpot(0, 12),
                      FlSpot(1, 14),
                      FlSpot(2, 16),
                      FlSpot(3, 20),
                      FlSpot(4, 24),
                    ],
                    isCurved: true,
                    color: Colors.green,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  InputDecoration _input(String label) => InputDecoration(
        labelText: label,
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
      );
}
