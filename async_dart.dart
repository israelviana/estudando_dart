void main() {
  requisicao();
}


//Requisicao ao servico externo
void requisicao() async {
  String nome = "israel";
  Future<String> res = getNameByCep("60711055");

  late String cep;
  
  cep = await res;

  print(cep);
}


//Servico externo
Future<String> getNameByCep(String cep) {
  //Simulando requisicao
  return Future.value("Francisco Glicerio");
}