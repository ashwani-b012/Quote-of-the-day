// lib/screens/favorite_quotes_screen.dart
import 'package:flutter/material.dart';
import 'package:quote_of_the_day/models/quote.dart';

class FavoriteQuotesScreen extends StatelessWidget {
  final List<Quote> favoriteQuotes;

  FavoriteQuotesScreen({required this.favoriteQuotes});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Favorite Quotes',
        ),
      ),
      body: ListView.builder(
        itemCount: favoriteQuotes.length,
        itemBuilder: (context, index) {
          final quote = favoriteQuotes[index];
          return ListTile(
            title: Text(
              '"${quote.text}"',
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
            subtitle: Text(
              '- ${quote.author}',
              style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 255, 254, 254)),
            ),
          );
        },
      ),
      backgroundColor: const Color.fromARGB(255, 165, 30, 233),
    );
  }
}
