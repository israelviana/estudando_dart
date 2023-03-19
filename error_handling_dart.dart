void main () {
  errorHandling();
  
}

void errorHandling() {

  Login login = Login();

  try { //tentar alguma coisa
    login.logar();
  } on CustomError catch(e){
    print('Senha errada!');
  } catch(e, stackStrace) { //capturar falha
    print("quaisquer outros tipos de erro");
    //throw Exception("Ocorreu um erro xpto"); //retornar um novo erro
    //rethrow; //propagar o erro 
  }
}

class Login {
  void logar() {
    String user = 'israel';
    String password = '123';

    if (password.length <= 6) throw CustomError();
  }
}

class CustomError implements Exception{}