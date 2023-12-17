class CreditCard {
  int number;
  DateTime validade;
  int cvc;
  int limit;
  String cardType;
  String function;

  CreditCard({
    required this.number,
    required this.validade,
    required this.cvc,
    required this.limit,
    required this.cardType,
    required this.function,
  });
}