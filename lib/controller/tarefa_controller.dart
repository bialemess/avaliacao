import 'package:avaliacao/model/tarefa.dart';
import 'package:flutter/material.dart';

class TarefaController with ChangeNotifier {
  List<Tarefa> _tarefas = List.from(tarefasExemplo);

  void cadastrar(Tarefa tarefa) {
    _tarefas.add(tarefa);
    notifyListeners();
  } 

  List<Tarefa> get getAll => _tarefas;

  List<Tarefa> findByNome(String desc) => _tarefas.where((tarefa) => tarefa.desc.toLowerCase().startsWith(desc.toLowerCase())).toList();

  void remover(Tarefa t1) {
    _tarefas.remove(t1);
    notifyListeners();
  }




  void atualizar(Tarefa anterior, Tarefa novo) {
    _tarefas[_tarefas.indexOf(anterior)] = novo;
    notifyListeners();
  }

  concluir(Tarefa tarefa) {}

  void limpar() {
    _tarefas.remove(_tarefas);
    notifyListeners();
  }

  void limparLista() {
    _tarefas.clear();
    notifyListeners();
  }

   void limparlista(){
    _tarefas=[];
    notifyListeners();
  }

}

const tarefasExemplo = [
Tarefa(desc: "Tarefa 1"),
Tarefa(desc: "Tarefa 2"),
Tarefa(desc: "Tarefa 3"),
Tarefa(desc: "Tarefa 4"),
Tarefa(desc: "Tarefa 5"),

];
