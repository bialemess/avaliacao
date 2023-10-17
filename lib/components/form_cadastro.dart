import 'package:avaliacao/controller/tarefa_controller.dart';
import 'package:avaliacao/model/tarefa.dart';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class FormCadastro extends StatefulWidget {
  const FormCadastro({super.key});

  @override
  State<FormCadastro> createState() => _FormCadastroState();
}

class _FormCadastroState extends State<FormCadastro> {
  final key = GlobalKey<FormState>();
  final descController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    final tarefaControl = Provider.of<TarefaController>(context, listen: false);

    return Form(
      key: key,
      child: Column(
        children: [
          TextFormField(
            controller: descController,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return "Insira uma tarefa.";
              }

              return null;
            },
            decoration: const InputDecoration(
              labelText: "Tarefa",
              hintText: "Sua tarefa",
              border: OutlineInputBorder()
            )),
          const SizedBox(height: 8),
        

          const SizedBox(height: 24),
          ElevatedButton.icon(
            onPressed: () {
              if (key.currentState != null && key.currentState!.validate()) {
                final desc = descController.text.trim();
               

                final tarefa = Tarefa(desc: desc);
                tarefaControl.cadastrar(tarefa);
                descController.clear();

                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text("Tarefa cadastrada com sucesso!"))
                );

              }
            },
            icon: const Icon(Icons.add_circle),
            label: const Text("Cadastrar"))
        ],
      )
    );
  }
}