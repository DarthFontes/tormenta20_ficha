import 'package:flutter/material.dart';
import 'atributo.dart';

class AtributoWidget extends StatelessWidget {
  final Atributo atributo;
  final VoidCallback onAumentar;
  final VoidCallback onDiminuir;
  final bool podeAumentar;
  final bool podeDiminuir;

  const AtributoWidget({
    super.key,
    required this.atributo,
    required this.onAumentar,
    required this.onDiminuir,
    required this.podeAumentar,
    required this.podeDiminuir,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 6),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Opacity(
                opacity: podeDiminuir ? 1 : 0,
                child: IconButton(
                  icon: const Icon(Icons.remove, color: Colors.red),
                  onPressed: podeDiminuir ? onDiminuir : null,
                ),
              ),
              Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  color: const Color.fromRGBO(168, 1, 1, 1),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Center(
                  child: Text(
                    '${atributo.modificadorBase}',
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Opacity(
                opacity: podeAumentar ? 1 : 0,
                child: IconButton(
                  icon: const Icon(Icons.add, color: Colors.green),
                  onPressed: podeAumentar ? onAumentar : null,
                ),
              ),
            ],
          ),
          const SizedBox(height: 6),
          Text(
            atributo.nome,
            style: const TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}