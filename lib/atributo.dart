class Atributo {
  final String nome;

  /// Modificador escolhido pelo jogador no inicio
  int modificadorBase;

  /// Bônus aplicados (racial, itens, poderes)
  int bonusItem;
  int bonusRacial;
  int bonusPoder;

  Atributo({
    required this.nome,
    this.modificadorBase = 0,
    this.bonusItem = 0,
    this.bonusRacial = 0,
    this.bonusPoder = 0,
  });

  int get modificadorTotal => modificadorBase + bonusRacial + bonusPoder + bonusItem;

  int get custo {
    switch (modificadorBase) {
      case -1:
        return -1;
      case 0:
        return 0;
      case 1:
        return 1;
      case 2:
        return 2;
      case 3:
        return 4;
      case 4:
        return 7;
      default:
        return 999;
    }
  }

  int custoProximo() {
    switch (modificadorBase + 1) {
      case 0:
        return -1;
      case 1:
        return 1;
      case 2:
        return 1;
      case 3:
        return 2;
      case 4:
        return 3;
      default:
        return 999;
    }
  }

  bool podeAumentar() => modificadorBase < 4;
  bool podeDiminuir() => modificadorBase > -1;

  void aumentar() {
    if (podeAumentar()) {
      modificadorBase++;
    }
  }

  void diminuir() {
    if (podeDiminuir()) {
      modificadorBase--;
    }
  }
}
