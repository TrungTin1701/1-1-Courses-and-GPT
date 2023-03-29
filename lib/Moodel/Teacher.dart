// Class Teachers
// ignore_for_file: file_names

enum Types {
  Education,
  Kids,
  Housewife,
  Finance,
  Business,
}

class Teachers {
  final double rate;
  final String name;
  final String image;
  final String email;
  final String phone;
  final String intro;
  final String country;
  final Set<Types> type;
  Teachers(
      {required this.rate,
      required this.name,
      required this.image,
      required this.email,
      required this.phone,
      required this.intro,
      required this.country,
      required this.type});
}
