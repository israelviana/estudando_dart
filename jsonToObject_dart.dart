import 'dart:convert';

void main() {
  jsonToObject();

  objectToJson();

}

void jsonToObject() {
  String json = ''' 
    {
      "usuario": "israelviana",
      "senha": 123456,
      "permissoes": [
        "owner", "admin"
      ]
    }
  ''';

  print(json);
  
  Map<String, dynamic> resultJson = jsonDecode(json);

  print(resultJson["permissoes"][0]);
}

void objectToJson() {
  Map<String, dynamic> map = {
    "nome": "israel",
    "sobrenome": "viana",
    "permissoes" : [
      "admin", "owner"
    ]
  };

  String result = jsonEncode(map);

  print(result);
}

