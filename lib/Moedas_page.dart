import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:moedas_paga/MoedaRepository.dart';
import 'package:moedas_paga/models/Moeda.dart';

class MoedasPage extends StatelessWidget {
  final tabela = MoedaRepository.tabela;
  NumberFormat real = NumberFormat.currency(locale: 'pt_BR', name: 'R\$');
  List<Moeda> selecionadas = [];

  appBarDinamica() {
    if (selecionadas.isEmpty) {
      return AppBar(
        title: Text('Cripto Moedas'),
      );
    } else {
      return AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              setState(() {
                selecionadas = [];
              });
            },
          ),
          title: Text('${selecionadas.length} selecionadas'),
          backgroundColor: Colors.blueGrey[50],
          elevation: 1,
          iconTheme: IconThemeData(color: Colors.black87),
          TextTheme);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: appBarDinamica(),
        body: ListView.separated(
            itemBuilder: (BuildContext context, int moeda) {
              return ListTile(
                leading: Image.asset(tabela[moeda].icone),
                title: Text(tabela[moeda].nome),
                trailing: Text(tabela[moeda].preco.toString()),
              );
            },
            padding: EdgeInsets.all(16),
            separatorBuilder: (_, __) => Divider(),
            itemCount: tabela.length));
  }

  void setState(Null Function() param0) {}
}
