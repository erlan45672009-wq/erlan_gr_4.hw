

void main(){
  //1
  print('Введите свой возраст:');
  int age  = int.parse(stdin.readLineSync()!);
  print('Введите температуру воздуха:');
  int tempeture = int.parse(stdin.readLineSync()!);
  if(age >20 && age <45 && tempeture >-20 && tempeture <30 ){
    print('You can go for a walk.');
  } else if(age <20 && tempeture >0 && tempeture<28 ){
  print('You can go for a walk.');
  }else if(age >45 && tempeture >-10 && tempeture <25){
    print('You can go for a walk.');
  }else{
    print('Stay home.');
  }
  //2
  print('Введете день недели:');
  String dayOfTheweek = stdin.readLineSync()!;
  switch (dayOfTheweek) {
    case 'Monday':
      print('It s the start of the week!');
      break;
    case 'Tuesday':
      print(' Keep going, almost weekend!');
      break;
    case 'Wednesday':
      print(' Keep going, almost weekend!');
      break;
    case 'Thursday':
      print(' Keep going, almost weekend!');
      break;
    case 'Friday':
      print('Weekend is coming!');
      break;
    case 'Saturday':
      print('Enjoy your weekend!');
      break;
    case 'Sunday':
      print('Enjoy your weekend!');
      break;
    default:
      print('Invalid day.');
      break;
  }
  //3
    print('Введите пароль:');
    String password = stdin.readLineSync()!;

    if(password.isEmpty){
      print(' Password cannot be empty.');
    }
    else if (password.length < 6){
      print('Password too short.');
    } 
    else if (password == 'dart123' ){
      print('Access granted.');
    } 
    else{
      print('Wrong password.');
    }
}