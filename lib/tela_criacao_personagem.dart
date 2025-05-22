import 'package:flutter/material.dart';
import 'atributo.dart';
import 'atributo_widget.dart';

class TelaCriacaoPersonagem extends StatefulWidget {
  const TelaCriacaoPersonagem({super.key});

  @override
  _TelaCriacaoPersonagemState createState() => _TelaCriacaoPersonagemState();
}

class _TelaCriacaoPersonagemState extends State<TelaCriacaoPersonagem> {
  List<Atributo> atributos = [
    Atributo(nome: 'Força'),
    Atributo(nome: 'Destreza'),
    Atributo(nome: 'Constituição'),
    Atributo(nome: 'Inteligência'),
    Atributo(nome: 'Sabedoria'),
    Atributo(nome: 'Carisma'),
  ];

  int get pontosRestantes {
    final totalGasto = atributos.fold(0, (total, attr) => total + attr.custo);
    return 10 - totalGasto;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Criação de Personagem')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            const Text(
              'Atributos',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),

            // Atributos centralizados
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: atributos.map((atributo) {
                  final podeAumentar =
                      atributo.podeAumentar() &&
                      pontosRestantes >= atributo.custoProximo();
                  final podeDiminuir = atributo.podeDiminuir();

                  return AtributoWidget(
                    atributo: atributo,
                    onAumentar: () {
                      setState(() => atributo.aumentar());
                    },
                    onDiminuir: () {
                      setState(() => atributo.diminuir());
                    },
                    podeAumentar: podeAumentar,
                    podeDiminuir: podeDiminuir,
                  );
                }).toList(),
              ),
            ),

            const SizedBox(height: 20),

            // Pontos restantes
            Text(
              'Pontos restantes: $pontosRestantes',
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}