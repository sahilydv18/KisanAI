import 'package:flutter/material.dart';

class ChatbotScreen extends StatelessWidget {
  const ChatbotScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('AI Crop Advisory')),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              padding: const EdgeInsets.all(16),
              children: const [
                _ChatBubble(text: 'How can I help you today?', isBot: true),
                _ChatBubble(text: 'Suggest a crop for Kharif in Pune.', isBot: false),
                _ChatBubble(text: 'Based on your region, soybean and maize are good options.', isBot: true),
              ],
            ),
          ),
          _QuickChips(),
          _ChatInput(),
        ],
      ),
    );
  }
}

class _ChatBubble extends StatelessWidget {
  final String text;
  final bool isBot;

  const _ChatBubble({required this.text, required this.isBot});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: isBot ? Alignment.centerLeft : Alignment.centerRight,
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 6),
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: isBot ? Colors.green.shade50 : Colors.green.shade200,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Text(text),
      ),
    );
  }
}

class _QuickChips extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 52,
      child: ListView(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: 12),
        children: const [
          Padding(
            padding: EdgeInsets.only(right: 8),
            child: Chip(label: Text('Pest control tips')),
          ),
          Padding(
            padding: EdgeInsets.only(right: 8),
            child: Chip(label: Text('Best crops this season')),
          ),
          Padding(
            padding: EdgeInsets.only(right: 8),
            child: Chip(label: Text('Irrigation schedule')),
          ),
        ],
      ),
    );
  }
}

class _ChatInput extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Row(
          children: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.mic),
              tooltip: 'Voice Input',
            ),
            Expanded(
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Ask about crops, pests, weather…',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),
            ),
            const SizedBox(width: 8),
            FilledButton(
              onPressed: () {},
              child: const Icon(Icons.send),
            ),
          ],
        ),
      ),
    );
  }
}
