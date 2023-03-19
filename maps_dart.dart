void main() {
  List<String> list = ['israel', '18'];
  print(list);
  
  //    chave, valor
  Map<String, dynamic> map = {'nome': 'israel', 'idade': 18};

  print(map);

  //Adicionando ao map
  map.putIfAbsent('sobrenome', () => 'viana');
  map['peso'] = 68;

  print(map);

  map['peso']  = 80;

  print(map);

  //atualizando o map
  map.update('peso', (value) => 66);

  print(map);

  //Iteracoes sobre o map
  map.forEach((chave, valor) => print('a chave eh: $chave, o valor eh: $valor'));

  //print as chaves
  map.keys.forEach(print);

  //print os valores
  map.values.forEach(print);

  map.remove('peso');

  print(map);

 


  


}