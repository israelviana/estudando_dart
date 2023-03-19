void main() {
  BuscarAlunos buscarAlunos = BuscarAlunos();
  buscarAlunos();

}


//transforma uma classe no método
class BuscarAlunos {
  void call() => print('israel, pedro');
}