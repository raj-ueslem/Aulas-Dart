class ProjectMap {
  String? id;
  String? title;
  String? description;
  String? startDate;
  String? expectedEndDate;
  int? amountPeople;

  ProjectMap.fromMap(Map<String, dynamic> map) {
    id = map['id'] ?? 0;
    title = map['title'] ?? "sem titulo";
    description = map['description'] ?? "Sem descrição";
    startDate = map['start_date'] ?? "Sem data inicial";
    expectedEndDate = map['expected_end_date'] ?? "Sem data final";
    amountPeople = map['amount_people'] ?? 0;
  }
  @override
  String toString() =>
      "Id: $id \nTitulo: $title \nDescrição: $description \nData Inicial: $startDate \nData Final:$expectedEndDate \nNumero de pessoas: $amountPeople";
}

void main() {
  const mock = [
    {
      "id": "93f08018-xxx-yyyy-zzzz-516b48bc6060",
      "title": "Projeto novo",
      "description": "Esse é um projeto que visa ensinar a utilização de construtores",
      "start_date": "10/12/2022 09:10:00",
      "expected_end_date": "23/12/2022 10:32:10",
      "amount_people": 1
    }
  ];

  final List<ProjectMap> projectMap = mock.map((element) => ProjectMap.fromMap(element)).toList();

  print(projectMap);
}
