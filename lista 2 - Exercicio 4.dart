class Animal {
  dynamic id;
  String? name;
  String? diet;
  String? status;

  Animal(this.id, this.name, this.diet, this.status);

  Animal.fromMap(Map<String, dynamic> map) {
    id = map['_id'] ?? "null";
    name = map['name'] ?? "Não informado";
    diet = map['diet'] ?? "Não informado";
    status = map['status'] ?? "Não informado";
    if (diet == "") {
      diet = "Não informado";
    }
    if (status == "") {
      status = "Não informado";
    }
  }
  @override
  String toString() => "\nCódigo: $id \nNome: $name \nDieta: $diet \nCondição: $status";
}

void main() {
  const mock = [
    {"_id": "5cc0746504e71a0010b85855", "name": "Bastard's girls", "diet": "", "status": "Uncertain"},
    {"_id": "5cc0746504e71a0010b85853", "name": "Animals and Plants", "diet": "", "status": ""},
    {"_id": "5cc0746504e71a0010b85854", "name": "Basilisks", "diet": "Carnivore", "status": "Active"},
    {"_id": "5cc0746504e71a0010b85856", "name": "Bears", "diet": "Omnivores", "status": "Active"},
    {"_id": "5cc0746504e71a0010b85857", "name": "Cats", "diet": "Carnivore", "status": "Active"}
  ];

  final List<Animal> animal = mock.map((animals) => Animal.fromMap(animals)).toList();

  for (var animal in animal) {
    print(animal);
  }
}
