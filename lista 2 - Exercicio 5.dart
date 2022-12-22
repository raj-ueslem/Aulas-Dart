class Json {
  int? userId;
  int? id;
  String? title;
  bool? status;

  Json(this.id, this.status, this.title, this.userId);

  Json.fromMap(Map<String, dynamic> map) {
    userId = map['userId'] ?? 0;
    id = map['id'] ?? 0;
    title = map['title'] ?? "sem titulo";
    status = map['status'] ?? false;
  }
  @override
  String toString() => "\nId usuario: $userId, \nID: $id, \nTitulo: $title, \nSituação: $status";
}

void main() {
  const mock = [
    {"id": 1, "title": "delectus aut autem", "status": true},
    {"userId": 1, "title": "quis ut nam facilis et officia qui", "status": true},
    {"userId": 1, "id": 3, "title": "fugiat veniam minus", "status": true},
    {"userId": 1, "id": 4, "title": "et porro tempora"},
    {"userId": 1, "id": 5, "status": true}
  ];

  final List<Json> json = mock.map((jsonElement) => Json.fromMap(jsonElement)).toList();

  for (var json in json) {
    print(json);
  }
}
