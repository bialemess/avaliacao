
import 'package:avaliacao/model/tarefa.dart';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

import '../controller/tarefa_controller.dart';

class FormAlterar extends StatefulWidget {
  final Tarefa tarefa;
  const FormAlterar({super.key, required this.tarefa});

  @override
  State<FormAlterar> createState() => _FormAlterarState();
}

class _FormAlterarState extends State<FormAlterar> {
  final key = GlobalKey<FormState>();
  final descController = TextEditingController();

  @override
  void initState() {
    super.initState();

    descController.text = widget.tarefa.desc;
   
  }

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
              if (value == null || value.trim() == "") {
                return "Insira uma tarefa!";
              }

              return null;
            },
            decoration: const InputDecoration(
              hintText: "Nome"
            ),
          ),


          ElevatedButton(
            onPressed: () {
              if (!key.currentState!.validate()) {
                return;
              }
              final desc = descController.text.trim();


              final novaTarefa = Tarefa(desc: desc);
              tarefaControl.atualizar(widget.tarefa, novaTarefa);

              Navigator.of(context).pushNamed("/consulta");
            }, 
            child: const Text("Alterar")
          ),
          ElevatedButton(
            onPressed: () {
              showDialog(
                context: context, 
                builder: (context) => AlertDialog(
                    title: const Text("Deseja mesmo excluir?"),
                    actions: [
                      TextButton(
                        onPressed: () => Navigator.of(context).pop(),
                        child: const Text("Cancelar")
                      ),
                      TextButton(
                        onPressed: () {
                          tarefaControl.remover(widget.tarefa);
                          Navigator.of(context).pushNamed("/consulta");
                        },
                        child: const Text("Confirmar")
                      )
                    ],
              ));
            },
            child: const Text("Excluir")
          )
        ],
      )
    );
  }
}