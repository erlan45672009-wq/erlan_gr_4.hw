enum Subject { math, physics, english, history }

class Person {
  String fullName;
  int age;
  bool isMarried;

  Person(this.fullName, this.age, this.isMarried);

  void introduce() {
    print('Hi!');
    print('My name is $fullName. I am $age years old. Married: ${isMarried ? 'Yes' : 'No'}.');
  }
}

class Student extends Person {
  Map<Subject, double> marks;

  Student(String fullName, int age, bool isMarried, this.marks)
      : super(fullName, age, isMarried);

  void showMarks() {
    print('Student: $fullName');
    for (var entry in marks.entries) {
      print('${entry.key.name}: ${entry.value}');
    }
  }

  double calculateAverage() {
    double sum = 0;
    for (var mark in marks.values) {
      sum += mark;
    }
    return marks.isEmpty ? 0 : sum / marks.length;
  }

  @override
  void introduce() {
    super.introduce();
    print('Average mark: ${calculateAverage()}');
  }
}

class Teacher extends Person {
  int experience;
  static double _baseSalary = 50000;

  Teacher(String fullName, int age, bool isMarried, this.experience)
      : super(fullName, age, isMarried);

  double calculateSalary() {
    double salary = _baseSalary;
    if (experience > 3) {
      for (int i = 0; i < (experience - 3); i++) {
        salary += salary * 0.05;
      }
    }
    if (isMarried) salary += 5000;
    return salary;
  }

  @override
  void introduce() {
    super.introduce();
    print('Experience: $experience years.');
    print('Salary: ${calculateSalary()}');
  }
}

void main() {
  Teacher teacher = Teacher('John Brown', 40, true, 5);
  teacher.introduce();
  print('---');

  Student st1 = Student('Adam White', 17, false, {
    Subject.math: 90,
    Subject.physics: 85,
    Subject.english: 92
  });
  
  st1.introduce();
  st1.showMarks();
  print('Average mark: ${st1.calculateAverage()}');
}