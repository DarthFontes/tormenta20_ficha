class Pericia {
  final String nome;
  final String? sufixoPersonalizado; //feito especialmente para oficios
  final String atributoChave;
  final bool treinada;
  final bool penalidadeArmadura;

  Pericia({
    required this.nome,
    this.sufixoPersonalizado,
    required this.atributoChave,
    required this.treinada,
    required this.penalidadeArmadura,
  });

    String get nomeCompleto => sufixoPersonalizado != null ? '$nome (${sufixoPersonalizado!})' : nome;
}

final List<Pericia> pericias = [
  Pericia(
    nome: 'Acrobacia',
    atributoChave: 'Destreza',
    treinada: false,
    penalidadeArmadura: true,
  ),

  Pericia(
    nome: 'Adestramento',
    atributoChave: 'Carisma',
    treinada: true,
    penalidadeArmadura: false,
  ),

  Pericia(
    nome: 'Atletismo',
    atributoChave: 'Força',
    treinada: false,
    penalidadeArmadura: false,
  ),

  Pericia(
    nome: 'Atuação',
    atributoChave: 'Carisma',
    treinada: true,
    penalidadeArmadura: false,
  ),

  Pericia(
    nome: 'Cavalgar',
    atributoChave: 'Destreza',
    treinada: false,
    penalidadeArmadura: false,
  ),

  Pericia(
    nome: 'Conhecimento',
    atributoChave: 'Inteligência',
    treinada: true,
    penalidadeArmadura: false,
  ),

  Pericia(
    nome: 'Cura',
    atributoChave: 'Sabedoria',
    treinada: false,
    penalidadeArmadura: false,
  ),

  Pericia(
    nome: 'Diplomacia',
    atributoChave: 'Carisma',
    treinada: false,
    penalidadeArmadura: false,
  ),

  Pericia(
    nome: 'Enganação',
    atributoChave: 'Carisma',
    treinada: false,
    penalidadeArmadura: false,
  ),

  Pericia(
    nome: 'Fortitude',
    atributoChave: 'Costituição',
    treinada: false,
    penalidadeArmadura: false,
  ),

  Pericia(
    nome: 'Furtividade',
    atributoChave: 'Destreza',
    treinada: false,
    penalidadeArmadura: true,
  ),

  Pericia(
    nome: 'Guerra',
    atributoChave: 'Inteligência',
    treinada: true,
    penalidadeArmadura: false,
  ),

  Pericia(
    nome: 'Iniciativa',
    atributoChave: 'Destreza',
    treinada: false,
    penalidadeArmadura: false,
  ),

  Pericia(
    nome: 'Intimidação',
    atributoChave: 'Carisma',
    treinada: false,
    penalidadeArmadura: false,
  ),

  Pericia(
    nome: 'Intuição',
    atributoChave: 'Sabedoria',
    treinada: false,
    penalidadeArmadura: false,
  ),

  Pericia(
    nome: 'Investigação',
    atributoChave: 'Inteligência',
    treinada: true,
    penalidadeArmadura: true,
  ),

  Pericia(
    nome: 'Jogatina',
    atributoChave: 'Carisma',
    treinada: true,
    penalidadeArmadura: false,
  ),

  Pericia(
    nome: 'Ladinagem',
    atributoChave: 'Carisma',
    treinada: true,
    penalidadeArmadura: true,
  ),

  Pericia(
    nome: 'Luta',
    atributoChave: 'Força',
    treinada: false,
    penalidadeArmadura: false,
  ),

  Pericia(
    nome: 'Misticismo',
    atributoChave: 'Inteligência',
    treinada: true,
    penalidadeArmadura: false,
  ),

  Pericia(
    nome: 'Nobreza',
    atributoChave: 'Inteligência',
    treinada: true,
    penalidadeArmadura: false,
  ),

  /*Pericia( 
    nome: 'Ofício',
    atributoChave: 'Inteligência',
    treinada: true,
    penalidadeArmadura: false,
  ),
  Base da pericia oficio*/

  Pericia(
    nome: 'Percepção',
    atributoChave: 'Sabedoria',
    treinada: false,
    penalidadeArmadura: false,
  ),

  Pericia(
    nome: 'Pilotagem',
    atributoChave: 'Destreza',
    treinada: true,
    penalidadeArmadura: false,
  ),

  Pericia(
    nome: 'Pontaria',
    atributoChave: 'Destreza',
    treinada: false,
    penalidadeArmadura: false,
  ),

  Pericia(
    nome: 'Reflexos',
    atributoChave: 'Destreza',
    treinada: false,
    penalidadeArmadura: false,
  ),

  Pericia(
    nome: 'Religião',
    atributoChave: 'Sabedoria',
    treinada: false,
    penalidadeArmadura: false,
  ),

  Pericia(
    nome: 'Sobrevivência',
    atributoChave: 'Sabedoria',
    treinada: false,
    penalidadeArmadura: false,
  ),

  Pericia(
    nome: 'Vontade',
    atributoChave: 'Sabedoria',
    treinada: false,
    penalidadeArmadura: false,
  ),
];
