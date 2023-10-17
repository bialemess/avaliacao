import 'package:avaliacao/base_page.dart';
import 'package:avaliacao/components/form_cadastro.dart';

import 'package:flutter/material.dart';

class CadastroPage extends StatelessWidget {
  const CadastroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Layout(context, title: "Cadastro",
      content: const Center(
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: FormCadastro(),
        ),
      ),
    );
  }
}