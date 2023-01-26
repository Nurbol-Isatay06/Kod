import 'dart:math';
import 'dart:io';

void rand(List a,int x, int y){
  for(int i = 0; i < a.length; i++){
    a[i] = Random().nextInt(y+1-x)+x;
  }

}

int maxValue(List a){
  int max = 0;
  for(int i = 0; i < a.length; i++){
    if(max < a[i])max = a[i];
  }
  return max;
}

int minValue(List a){
  int min = a[0];
  for(int i = 1; i < a.length; i++){
    if(min > a[i])min = a[i];
  }
  return min;
}

void main(){
  const int size = 10;
  List list = List.filled(size,0);
  int? x = int.parse(stdin.readLineSync()!);
 int? y = int.parse(stdin.readLineSync()!);
  rand(list,x,y);

  for (var i in list){
    print(i);
  }
  var max = maxValue(list);
  print("Max = $max");
  var min = minValue(list);
  print("Min = $min");
}