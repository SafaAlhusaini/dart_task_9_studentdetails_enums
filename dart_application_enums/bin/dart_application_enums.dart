import 'dart:io';

void main() {
  print("-----------Student Form------------");
  print("-----------------------------------");

  print("Your Name :");
  String? name = stdin.readLineSync();

  print("Your College Email :");
  String? email = stdin.readLineSync();

  print("Your Phone number:");
  int? phone = int.tryParse(stdin.readLineSync()!);

  print("Your Cid:");
  String? cId = stdin.readLineSync()!;

  print("Your Adress:");
  String? adress = stdin.readLineSync()!;

  Map student = {
    StudentMap.name.name: name,
    StudentMap.email.name: email,
    StudentMap.phone: phone.toString(),
    StudentMap.cId.name: cId,
    StudentMap.adress.name: adress
  };

  for (var s in student.entries) {
    print("-----------");
    print( "${s.key} : ${s.value}");
  }
}

enum StudentMap { name, email, phone, cId, adress }
