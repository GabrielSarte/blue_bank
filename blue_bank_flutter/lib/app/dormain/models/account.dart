class Account {
  dynamic idConta;
  String nome;
  int agencia;
  int banco;
  String estabelecimento;
  int saldo;

  Account({
    required this.idConta,
    required this.nome,
    required this.agencia,
    required this.banco,
    required this.estabelecimento,
    required this.saldo,
  });
}