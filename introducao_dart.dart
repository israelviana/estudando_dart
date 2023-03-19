void main(){

  //1 - Variaveis
    String variavelNome = "Israel";
    print(variavelNome);

    int variavelNumero = 13;
    print(variavelNumero);

    bool variavelBool = false;
    print(variavelBool);

    List<String> listaString = ['israel', 'paulo'];
    print("${listaString}");
  
  //2 - Null-Safety
    String? nome;
    nome = 'israel';
    print(nome);

    late String sobrenome;
    sobrenome = "viana";
    print(sobrenome);

  //3 - IF & SWITCH
    bool seguirEmFrente = false;

    if (seguirEmFrente){
      print("Pode seguir em frente!");
    }else{
      print("Não pode seguir em frente!");
    }

    int valorInt = 0;

    switch(valorInt){
      case 0:
        print("deu 0");
        break;
      case 1:
        print("deu 1");
        break;  
      case 2:
        print("deu 2");
        break;
      default:
        print("nenhuma das opcoes");
        break;
    }
  
  //4 - Estruturas de repetição
    for(int i = 1; i <= 10; i++) {
        print(i * 2);
    }


    int contador = 10;
    while(contador != 1) {
      print("loop -> ${contador--}");
    }

  //5 - Metodos e Classes
    Celular s10 = Celular("preto","samsung", 128, "s10", 6);
    print(s10.toString());
    print("Valor do celular: ${s10.precoDoCelular(1200)}");
  
  //6 - Orientacao a objetos
    Carro onix = Carro("onix");
    Carro gol = Carro("gol");
    print(onix.valorPadraoCarro);
    print(gol.valorPadraoCarro);
  
  //7 - Heranca, Polimofirsmo e Abstracao(Interfaces - Modelos de contratos a serem seguidos)
    Filho israel = Filho();
    print(israel.falar());
  
    Pagamento pagamento = PagarComBoleto();
    pagamento.pagar();
  
    pagamento = PagarComPix();
    pagamento.pagar();
}

//5.1 - Metodos e Classes
  class Celular {
    final String cor;
    final String modelo;
    final String marca;
    final int ram;
    final int memoria;

    Celular(
      this.cor,
      this.marca,
      this.memoria,
      this.modelo,
      this.ram
    );

    String toString() {
      return 'Cor: $cor, Modelo: $modelo, Marca: $marca, Memoria: $memoria, Ram: $ram';
    }

    double precoDoCelular(double valorBase) {
      return valorBase * ram;
    }
  }

//6.1 - Orientacao a objetos
  class Carro {
    final String modelo;
    int _valor = 1000;
    
    Carro(this.modelo);
    
    int get valorPadraoCarro => _valor;
    
    void set setValorCarro(int valor) => _valor = valor;
  }

//7.1 - Heranca, Polimofirsmo e Abstracao(Interfaces - Modelos de contratos a serem seguidos)

  //Abstracao/Interfaces 1.0
    abstract class Pessoa {
      String comunicar();
    }

    class PessoaDesenvolvedor implements Pessoa {
      String comunicar() {
        return "Ola Mundo!";
      }
    }

    class PessoaNormal implements Pessoa {
      String comunicar() {
        return "Bom dia!";
      }
    }
    
  //Abstracao/Interfaces && Polimorfismo 2.0
    abstract class Pagamento {
      void pagar();
    }
    
    class PagarComBoleto implements Pagamento {
      void pagar () {
        print("pagando com boleto!");
      }
    }
    
    class PagarComPix implements Pagamento {
      void pagar () {
        print("pagando com pix!");
      }
    }     

  //Heranca
    class Pai {
      String falar() {
        return "Girias";
      }
    }
    
    class Filho extends Pai {
      
    }
  

