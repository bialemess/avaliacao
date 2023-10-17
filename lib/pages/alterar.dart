import 'package:avaliacao/base_page.dart';
import 'package:avaliacao/components/form_alterar.dart';
import 'package:avaliacao/model/tarefa.dart';

import 'package:flutter/material.dart';

class AlterarPage extends StatelessWidget {
  final Tarefa tarefa;

  const AlterarPage({super.key, required this.tarefa});

  @override
  Widget build(BuildContext context) {
    return Layout(context, 
      title: "Alterar", 
      content: Center(
        child: FormAlterar(tarefa: tarefa),
      )
    );
  }
}
