
void main() {
for (var i = 1; i <=30 ; i++ ) {
  if ( i % 3 == 0 && i % 5 == 0){
    print('FizzBuzz');
  }else if(i % 3==0 ) {
    print("Fizz");
  }else if(i % 5==0){
    print('Buzz');
  }else{
    print(i);
  }
}
  List<int> numbers = [3, -2, 0, 7, -5, 10, 1];
  int positiveCount = 0;
  double positiveSum = 0;

  for (int number in numbers) {
    if (number > 0) {
      positiveCount++;
      positiveSum += number;
    }
  }

  if (positiveCount > 0) {
    double average = positiveSum / positiveCount;
    print('Positive numbers count: $positiveCount');
    print('Average of positive numbers: $average');
  } else {
    print('No positive numbers.');
  }
  Map<String, int> fruits = {'Apple': 5, 'Banana': 2, 'Mango': 7, 'Orange': 0};

  fruits.forEach((key, value) {
    if (value > 0) {
      print('Available: $key ($value pcs)');
    }
  });
}
