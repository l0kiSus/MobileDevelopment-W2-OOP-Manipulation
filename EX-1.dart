enum Skill { FLUTTER, DART, OTHER }

class Address {
  String street;
  String city;
  int zipCode;

  Address(this.street, this.city, this.zipCode);
}

class Employee {
  String name;
  double baseSalary;
  List<Skill> skills;
  Address address;
  int yearsOfExperience;

  Employee(
    this.name,
    this.baseSalary,
    this.skills,
    this.address,
    this.yearsOfExperience
  );

  Employee.mobileDeveloper(
    String name,
    Address address,
    int yearsOfExperience
  ) : name = name,
      baseSalary = 40000,
      skills = [Skill.DART, Skill.FLUTTER],
      address = address,
      yearsOfExperience = yearsOfExperience;

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