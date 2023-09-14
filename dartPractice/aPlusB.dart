import 'dart:io';

class zeroException implements Exception {
  String zeroError(){
    return 'Denominator cannot be zero';
  }
}

void calCulate (int a, int b, int c, int d){
  if (b*d == 0){
    throw zeroException();
  }
  double result = ((a*b)+ (b*c))/ (b*d);
  print(result); 
}

void main() {
  int a = int.parse(stdin.readLineSync()!);
  int b = int.parse(stdin.readLineSync()!);
  int c = int.parse(stdin.readLineSync()!);
  int d = int.parse(stdin.readLineSync()!);
  // print('$a $b $c $d');
  try{
    calCulate(a, b, c, d);
  }
  catch(error){
    if (error is zeroException){
      print(error.zeroError());
    }
  }
}
