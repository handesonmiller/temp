import 'dart:io';

/*O algoritmo tem por finalidade:
Mostrar um menu com opcoes:
1 - Cripgrafa um texto;
2 - Descriptografa um texto;
3 - Exibe o texto pré definido criptografado;
4 - Qualquer outra opcao: Sai do programa;
Passos:
Funcao que mostra o menu de opcoes;
Menu de opcoes chama a funcao das opcoes;
Funcao que le a opcao do menu de opcoes, tratando as opcoes;
Funcao referente a opcao, pedindo para ler o texto;
Funcao referente a opcao chama a função que verifica se o texto esta no alfabeto;




*/
/*--------------------------------------------------------------------------------*/
//Funcao do menu principal:
void menu() {
  int op = 1;
  stdout.writeln('--------------------------------------------------');
  stdout.writeln('Entre com:');
  stdout.writeln('1 - Criptografar texto:');
  stdout.writeln('2 - Descriptografar texto:');
  stdout.writeln('3 - Apenas exiba um texto criptografado:');
  stdout.writeln('4 - Qualquer outra opcao: Sai do programa.');
  stdout.writeln('--------------------------------------------------');
  stdout.write('Opcao: ');
  op = int.parse(stdin.readLineSync()!);
  opcoes(op);
}

/*--------------------------------------------------------------------------------*/
//Funcao que sai do programa:
void sair() {
  stdout.writeln('Saindo do programa...');
}
/*--------------------------------------------------------------------------------*/

//Funcao que le as opcoes:
int? opcoes(int op) {
  if (op == 1) {
    print('Opcao 1');
    lerString();
    menu();
  }

  if (op == 2) {
    print('Opcao 2');
    lerString();
    menu();
  }

  if (op == 3) {
    print('Opcao 3');
    lerString();
    menu();
  }

  if (op < 1 || op > 3) {
    sair();
  }
  return null;
}
/*--------------------------------------------------------------------------------*/

//Funcao que le a string quando a opcao foi selecionada:
String? lerString() {
  String entrada;
  stdout.writeln('Entre com a String a ser lida: ');
  entrada = stdin.readLineSync()!;
  verifica_utf16(entrada);
  return null;
}

/*--------------------------------------------------------------------------------*/

//Funcao que verifica se a String contem acentos ou simbolos:
void verifica_utf16(String entrada) {
  String verifica = entrada;
  print(verifica);

  for (var i = 0; i < verifica.length; i++) {
    int verificautf = verifica.codeUnitAt(i);
    print(verificautf);
  }
}
//String? menu_de_opcoes(int op) {
//int opcao;

//}

//String? criptografar(String? palavra) {
//stdout.writeln('Texto da funcao: $palavra');

//return '?';
//}

//String? descriptografar(String? palavra) {
//stdout.writeln('Texto da funcao: $palavra');

//return '?';
//}

//String criptografar(String palavra, int chave) {
//return '?';
//}

//String descriptografar(String palavra, int chave) {
//return '?';
//}

//String exibe_texto_padrao(String palavra, int chave) {
//return '?';
//}

void main() async {
  //int opcao = 1;
  final text = 'Texto teste';
  stdout.write('$text\n');
  menu();

  //while (opcao > 0 && opcao < 4) {
  //stdout.writeln('Entre com:');
  //stdout.writeln('1 - Criptografar texto:');
  //stdout.writeln('2 - Descriptografar texto:');
  //stdout.writeln('3 - Apenas exiba um texto criptografado:');
  //stdout.writeln('4 - Qualquer outra opcao: Sai do programa.');
  //stdout.write('Opcao: ');
  //opcao = int.parse(stdin.readLineSync()!);
  //stdout.writeln('Opcao selecionada: $opcao');
  //await Process.run('clear', []);
  //}

  //for (var i = 0; i < text.length; i++) {
  //print(text[i]);
  //}
  final lista = text.codeUnits;
  //print(lista);
  //print(String.fromCharCodes(lista));
//}
}
