import 'package:avaliacao/base_page.dart';
import 'package:avaliacao/components/consulta.dart';
import 'package:avaliacao/controller/tarefa_controller.dart';
import 'package:avaliacao/model/tarefa.dart';
import 'package:flutter/material.dart';

class ConsultaPage extends StatefulWidget {
  const ConsultaPage({super.key});

  @override
  State<ConsultaPage> createState() => _ConsultaPageState();
}

class _ConsultaPageState extends State<ConsultaPage> {
  final descController = TextEditingController();

  TarefaController taref = TarefaController();

  final key = GlobalKey<FormState>();

  String? desc;

  @override
  Widget build(BuildContext context) {
    return Layout(
      context,

      title: "Lista de Tarefas",

      
      content: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 8),
        child: Form(
          key: key,
          child: Column(
            children: [
              TextFormField(
                controller: descController,
                onChanged: (value) => setState(() => desc = value),
                decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.search),
                    labelText: "tarefa",
                    border: OutlineInputBorder()),
              ),
              const SizedBox(height: 8),
              const SizedBox(height: 24),
              ElevatedButton.icon(
                  onPressed: () {
                    setState(() {
                      desc = descController.text.trim();
                    });
                  },
                  icon: const Icon(Icons.search_off),
                  label: const Text("Buscar tarefa")),
              
              
              Expanded(child: ConsultaTarefa(desc: desc)),

                 
              ElevatedButton.icon(
                  onPressed: () {
                    setState(() {
                      taref.limparLista();


                      
                
                    setState(() {
                      taref.limpar();


                    });
                    });
                  },
                  icon: const Icon(Icons.delete_forever),
                  label: const Text("Limpar lista")),
              
              
        
              
              
           
            ],
          ),
        ),


      ),
    );
  }
}
