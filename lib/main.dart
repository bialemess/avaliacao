import 'package:avaliacao/controller/tarefa_controller.dart';
import 'package:avaliacao/pages/cadastro.dart';
import 'package:avaliacao/pages/consulta.dart';
import 'package:avaliacao/pages/home.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => TarefaController(),
      child: const MyApp())
    );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Lista de Tarefas',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 245, 162, 238)),
        useMaterial3: true,
      ),
      routes: {
        "/": (context) => const HomePage(),
        "/cadastro": (context) => const CadastroPage(),
        "/consulta": (context) => const ConsultaPage()
      }
    );
  }
}
