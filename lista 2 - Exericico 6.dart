class Project {
  String id;
  String title;
  String description;
  String startDate;
  String expectedEndDate;
  int amountPeople;

  Project(
      {required this.id,
      required this.title,
      required this.description,
      required this.startDate,
      required this.expectedEndDate,
      required this.amountPeople});

  factory Project.fromMap(Map<String, dynamic> map) => Project(
      id: map['id'],
      title: map['title'],
      description: map['description'],
      startDate: map['start_date'],
      expectedEndDate: map['expected_end_date'],
      amountPeople: map['amount_people']);

  @override
  String toString() => "Id: $id \nTitulo: $title \nDescrição: $description \nData Inicial: $startDate "
      "\nData Final:$expectedEndDate \nNumero de pessoas: $amountPeople";
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
    },
    {
      "id": "198y34723d-xxx-yyyy-zzzz-516b48bc6060",
      "title": "Projeto Antigo",
      "description": "Esse é um projeto que visa ensinar a utilização de construtores sem factory",
      "start_date": "10/12/2022 19:01:20",
      "expected_end_date": "23/12/2022 10:32:10",
      "amount_people": 1
    }
  ];

  final List<Project> projectMaps = mock.map((element) => Project.fromMap(element)).toList();

  print(projectMaps);
}
