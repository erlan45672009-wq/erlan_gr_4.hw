void main() {
  String name = "Erlan"; //1
  int age = 19;
  String city = 'Karakol';
  String job = 'Developer';
  String hobby = 'Гитарист';

  print("Hello! my name is $name");
  print("I am $age years old and I live in $city");
  print("My profession is $job");
  print("In my free time, I enjoy $hobby");

  int salary = 45000; //2
  int mouth = 12;
  int procent = 10;

  int income = salary * mouth;
  int bonus = income + (income * procent ~/ 100);

  print("My yearly income: $income USD.");
  print("My yearly income with 10% bonus: $bonus USD.");

  String text = " Knowledge is power, but practice makes perfect. ";//3
  print(text);
  text = text.trim();
  print(text);
  text = text.toUpperCase();
  print(text);
  text = text.replaceAll('PRACTICE', 'EXPERIENCE');
  print(text);
  text = text.contains('POWER') ? 'yes' : 'no';
  print(text);

  int apples = 7;//4
  int people = 5; 
  
  int personeGets = apples ~/ people;
  int applesLeft = apples % people;

  print('Each person gets $personeGets apples.');
  print('Apples left:$applesLeft.');

  int currentYear = 2026;//5
  int myAge = 16;
  int birtYear = currentYear - myAge; //сам я 2009 года просто в октябре родился 

  print('I was born in $birtYear');

  var ciity = 'Karakol';//6
  final country = "Kyrgyzstan";

  ciity = "Osh";
  //country = "Russia"; нельзя изменить

  print("City: $ciity");
  print("Country: $country");

}