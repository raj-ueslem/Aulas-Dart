class ProjectShop {
  String id;
  String description;
  int value;

  ProjectShop({required this.id, required this.description, required this.value});

  factory ProjectShop.fromMap(Map<String, dynamic> map) => ProjectShop(id: map['id'], description: map['description'], value: map['value']);

  Map<String, dynamic> toMap() => {'id': id, 'description': description, 'value': value};

  @override
  String toString() => "${toMap()}";
}

void main() {
  const mock = [
    {"id": "asdasd13213", "description": "nada nada", "value": 113},
    {"id": "asdasd13213", "description": "nada nada", "value": 134},
    {"id": "asdasd13213", "description": "nada nada", "value": 213},
    {"id": "asdasd13213", "description": "nada nada", "value": 123},
    {"id": "asdasd13213", "description": "nada nada", "value": 123}
  ];

  final List<ProjectShop> projects = mock.map((element) => ProjectShop.fromMap(element)).toList();
  print(projects);
}
