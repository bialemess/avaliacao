
import 'package:avaliacao/components/tarefa_tile.dart';
import 'package:avaliacao/controller/tarefa_controller.dart';
import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:provider/provider.dart';


class ConsultaTarefa extends StatelessWidget {
  final String? desc;


  const ConsultaTarefa({super.key, this.desc});

  @override
  Widget build(BuildContext context) {
    return Consumer<TarefaController>(builder: (context, tarefaControl, child) {
      final filteredList = tarefaControl.getAll.where((tarefa) {
        if (desc != null && desc!.trim().isNotEmpty) {
          return tarefa.desc.toLowerCase().startsWith(desc!.toLowerCase());
        }

        return true;
      }).toList();

      return ListView.separated(
        shrinkWrap: true,
        physics: const AlwaysScrollableScrollPhysics(),
        itemCount: filteredList.length,
        itemBuilder: (context, index) => TarefaTile(tarefa: filteredList[index]),
        separatorBuilder: (context, index) => const Divider(thickness: 2),
      );
    });
  }
}
