enum Skill { FLUTTER, DART, OTHER }

class Employee {
  final String _name;
  final double _baseSalary;
  final List<Skill> _skills;
  final Address _address;
  final int _yearOfExperience;

  Employee(this._name, this._baseSalary, this._skills, this._address,
      this._yearOfExperience);

  //name constructor
  Employee.mobileDeveloper(
      String name, double baseSalary, Address address, int yearOfExperience)
      : this._name = name,
        this._baseSalary = baseSalary,
        this._skills = [Skill.FLUTTER, Skill.DART],
        this._address = address,
        this._yearOfExperience = yearOfExperience;

  //getter
  String get name => _name;
  double get baseSalary => _baseSalary;
  List<Skill> get skills => _skills;
  Address get address => _address;
  int get yearOfExperience => _yearOfExperience;

  //method to compute the salary
  double computeSalary() {

    double Total_salary = _baseSalary;

    const int bonusYearExper = 2000;

    Total_salary += bonusYearExper * _yearOfExperience;

    const int bonusFlutter = 3000;
    const int bonusDart = 2000;
    const int bonusother = 1000;

    for (var skill in _skills) {
      switch (skill) {
        case Skill.FLUTTER:
          Total_salary += bonusFlutter;
          break;

        case Skill.DART:
          Total_salary += bonusDart;
          break;

        case Skill.OTHER:
          Total_salary += bonusother;
          break;
      }
    }

    return Total_salary;
  }

  void printDetails() {
    print(
        'Employee: $_name, Base Salary: \$${_baseSalary}, Comnputed salary: \$${computeSalary()}');
  }
}

class Address {
  String street;
  String city;
  int? zipCode;

  Address(this.street, this.city, [this.zipCode]);
}

void main() {
  // Creating an address
  var address1 = Address('6A', 'PP', 1200);
  var address2 = Address('203', 'Los Angeles');

  // Creating a general employee
  var emp1 = Employee('Sokea', 40000, [Skill.FLUTTER, Skill.OTHER], address1, 5);
  emp1.printDetails();

  // Creating a mobile developer using the named constructor
  var emp2 = Employee.mobileDeveloper('Ronan', 40000, address2, 3);
  emp2.printDetails();
}
