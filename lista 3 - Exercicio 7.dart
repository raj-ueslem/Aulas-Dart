mixin PersonEmail {
  bool validateEmail(String email) {
    List<String> splitEmail = email.split('@');
    return splitEmail.length == 2 && splitEmail[1].endsWith('.com') || splitEmail[1].endsWith('.com.br');
  }
}

class Email with PersonEmail {
  String email;

  Email({required this.email});

  @override
  String toString() => "$email, ${validateEmail(email)}";
}

void main() {
  final email = Email(email: "rasdasd@gmail.com.br");

  print(email);
}
