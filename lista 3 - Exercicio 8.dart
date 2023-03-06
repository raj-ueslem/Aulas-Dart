class Institute {
  String name;
  String alias;
  String id;
  String hostName;

  Institute({required this.name, required this.id, required this.alias, required this.hostName});

  factory Institute.fromMap(Map<String, dynamic> map) => Institute(name: map['name'], id: map['id'], alias: map['alias'], hostName: map['hostName']);

  @override
  String toString() => "$name, $alias, $id, $hostName";
}

void main() {
  //mais objetos
  const mock = [
    {"name": "Raj", "id": "ABC809", "alias": "Totalmente feito", "hostName": "www.google.com"}
  ];

  final List<Institute> institutions = mock.map((e) => Institute.fromMap(e)).toList();

  print(institutions);
}
