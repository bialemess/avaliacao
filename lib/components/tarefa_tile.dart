import 'package:avaliacao/controller/tarefa_controller.dart';
import 'package:avaliacao/model/tarefa.dart';
import 'package:avaliacao/pages/alterar.dart';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class TarefaTile extends StatelessWidget {
  final Tarefa tarefa;

  const TarefaTile({super.key, required this.tarefa});

  @override
  Widget build(BuildContext context) {
    return ListTile(
       
        title: Text(tarefa.desc),
        trailing: SizedBox(
            width: 120,
           
            child: Row(
              children: [   
                
                IconButton(onPressed: () => Provider.of<TarefaController>(context, listen: false).concluir(tarefa),
                    
                    icon: const Icon(Icons.check_outlined)),

                IconButton(
                    onPressed: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => AlterarPage(tarefa: tarefa))),
                    icon: const Icon(Icons.edit)),
                IconButton(
                    onPressed: () => Provider.of<TarefaController>(context, listen: false).remover(tarefa),
                    icon: const Icon(Icons.delete)),
             

              ],
            )),
      );
  }
}
