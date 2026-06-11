
import 'package:consulta_api_filme_1/models/filme.dart';
import 'package:consulta_api_filme_1/services/omdb_service.dart';
import 'package:flutter/material.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  final TextEditingController controller = TextEditingController();

  final OmdbService service = OmdbService();

  List<Filme> filmes = [];

  bool carregando = false;

  Future<void> pesquisar() async {
    setState(() {
      carregando = true;
    });

    filmes = await service.buscarFilmes(controller.text);

    setState(() {
      carregando = false;
    });
  }


  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
