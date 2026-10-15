enum Skill { FLUTTER, DART, OTHER }

class Address {
  String street;
  String city;
  int zipCode;

  Address(this.street, this.city, this.zipCode);
}

class Employee {
  String _name;
  double _baseSalary;
  List<Skill> _skills;
  Address _address;
  int _yearsOfExperience;

  String get name => _name;
  double get baseSalary => _baseSalary;
  List<Skill> get skills => _skills;
  Address get address => _address;
  int get yearsOfExperience => _yearsOfExperience;

  Employee(
    this._name,
    this._baseSalary,
    this._skills,
    this._address,
    this._yearsOfExperience
  );

  Employee.mobileDeveloper(
    String name,
    Address address,
    int yearsOfExperience
  ) : _name = name,
      _baseSalary = 40000,
      _skills = [Skill.DART, Skill.FLUTTER],
      _address = address,
      _yearsOfExperience = yearsOfExperience;

  void printDetails() {
    print('Employee: $name');
    print('Base Salary: \$${baseSalary}');
    print('Skills: $skills');
    print('Street: ${address.street}');
    print('City: ${address.city}');
    print('Zip Code: ${address.zipCode}');
    print('Experience: $yearsOfExperience years');
    print('--------------------------');
  }
}

void main() {
  var emp1 = Employee(
    'Sokea',
    40000,
    [Skill.DART, Skill.FLUTTER],
    Address('Street 67', 'Phnom Penh', 676767),
    3,
  );
  emp1.printDetails();

  var emp2 = Employee.mobileDeveloper(
    'Ronan',
    Address('Street Norodom', 'Phnom Penh', 676767),
    20,
  );
  emp2.printDetails();
}