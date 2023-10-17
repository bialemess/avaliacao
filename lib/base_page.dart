import 'package:flutter/material.dart';

class Layout extends Scaffold {
  final String title;
  final Widget content;

  Layout(BuildContext context, {super.key, required this.title, required this.content}) : super(
    appBar: AppBar(

      
      title: Text(title),
      
      centerTitle: true,

    ),
    body: content,
    bottomNavigationBar: BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      items: [
        BottomNavigationBarItem(
          label: "Avaliação",
          icon: IconButton(
            icon: const Icon(Icons.home),
            onPressed: () => Navigator.of(context).pushNamed("/"),
          )),
        BottomNavigationBarItem(
          label: "Cadastro",
          icon: IconButton(
            icon: const Icon(Icons.add),
            onPressed: () => Navigator.of(context).pushNamed("/cadastro"),
          )),
        BottomNavigationBarItem(
          label: "Consulta",
          icon: IconButton(
            icon: const Icon(Icons.search),
            onPressed: () => Navigator.of(context).pushNamed("/consulta"),
          ))
      ])
  );
}
