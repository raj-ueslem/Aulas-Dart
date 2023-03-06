class Book {
  int userId;
  int id;
  String title;
  bool status;

  Book({required this.id, required this.status, required this.title, required this.userId});

  factory Book.fromMap(Map<String, dynamic> map) => Book(userId: map['userId'], id: map['id'], title: map['title'], status: map['status']);

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
  final List<Book> listBook = mock.map((mockElement) => Book.fromMap(mockElement)).toList();

  for (var json in listBook) {
    print(json);
  }
}
