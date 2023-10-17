import 'package:avaliacao/base_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Layout(context, title: "Início",
      content: const Center(
        child: Text("Avaliação, Bianca Lemes Costa RA:201288"),
      ),
    );
  }
}
