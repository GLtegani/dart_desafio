void main() {
  //! Detalhe sobre a String
  //! A String é composta por 4 campos (Nome|Idade|Profissão|Estado onde mora)

  final pacientes = [
    'Rodrigo Rahman|35|desenvolvedor|SP',
    'Manoel Silva|12|estudante|MG',
    'Joaquim Rahman|18|estudante|SP',
    'Fernando Verne|35|estudante|MG',
    'Gustavo Silva|40|desenvolvedor|MG',
    'Sandra Silva|40|Desenvolvedor|MG',
    'Regina Verne|35|dentista|MG',
    'João Rahman|55|jornalista|SP',
  ];

  //! Baseado no array acima monte um relatório onde:
  //! 1 - Apresente os pacientes com mais de 20 anos e print o nome deles

  print('Apresentando pacientes com mais de 20 anos');

  for (var paciente in pacientes) {
    var dadosPacientes = paciente.split('|');
    var idade = int.tryParse(dadosPacientes[1]) ?? 0;
    if (idade > 18) {
      print(dadosPacientes[0]);
    }
  }

  //! 2 - Apresente quantos pacientes existem para cada profissão (desenvolvedor, estudante, dentista, jornalista)

  print('Apresentando quantos pacientes existem para cada profissão');

  print('Desenvolvedores: ');

  for (var paciente in pacientes) {
    var dadosPacientes = paciente.split('|');
    var profissoes = dadosPacientes[2].toLowerCase();
    var nomes = dadosPacientes[0];

    if (profissoes == 'desenvolvedor') {
      print(nomes);
    }
  }

  print('Estudantes: ');

  for (var paciente in pacientes) {
    var dadosPacientes = paciente.split('|');
    var profissoes = dadosPacientes[2].toLowerCase();
    var nomes = dadosPacientes[0];

    if (profissoes == 'estudante') {
      print(nomes);
    }
  }

  print('Dentistas: ');

  for (var paciente in pacientes) {
    var dadosPacientes = paciente.split('|');
    var profissoes = dadosPacientes[2].toLowerCase();
    var nomes = dadosPacientes[0];

    if (profissoes == 'dentista') {
      print(nomes);
    }
  }

  print('Jornalistas: ');

  for (var paciente in pacientes) {
    var dadosPacientes = paciente.split('|');
    var profissoes = dadosPacientes[2].toLowerCase();
    var nomes = dadosPacientes[0];

    if (profissoes == 'jornalista') {
      print(nomes);
    }
  }

  //! 3 - Apresente a quantidade de pacientes que moram em SP

  print(
      'Apresentando a quantidade de pacientes que moram em SP (e em MG, pra me desafiar)');
  print('Moram em SP: ');

  for (var paciente in pacientes) {
    var dadosPacientes = paciente.split('|');
    var estado = dadosPacientes[3].toLowerCase();
    var nome = dadosPacientes[0];

    if (estado == 'sp') {
      print(nome);
    }
  }

  print('Moram em MG: ');

  for (var paciente in pacientes) {
    var dadosPacientes = paciente.split('|');
    var estado = dadosPacientes[3].toLowerCase();
    var nome = dadosPacientes[0];

    if (estado == 'mg') {
      print(nome);
    }
  }
}
