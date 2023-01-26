import 'dart:math';   
import 'dart:io';      /*  Добавляем библотек dart:math , dart:io */ 

void rand(List a,int x, int y){
  for(int i = 0; i < a.length; i++){   /*  Айнымалыларды енгізіп, for циклін жүзеге асырамыз  */
    a[i] = Random().nextInt(y+1-x)+x;
  }

}

int maxValue(List a){
  int max = 0;
  for(int i = 0; i < a.length; i++){   /*   Сан тізбегімізден макс.значение табамыз, ол үшін листке қосымша 
  айнымалы беріп for циклі арқылы if шартын енгізе отыра табамыз  */
    if(max < a[i])max = a[i];
  }
  return max;
}

int minValue(List a){
  int min = a[0];
  for(int i = 1; i < a.length; i++){ /*   Сан тізбегімізден мин.значение табамыз, ол үшін листке қосымша 
  айнымалы беріп for циклі арқылы if шартын енгізе отыра табамыз   */
    if(min > a[i])min = a[i];
  }
  return min;
}

void main(){
  const int size = 10;
  List list = List.filled(size,0);
  int? x = int.parse(stdin.readLineSync()!);
 int? y = int.parse(stdin.readLineSync()!);     /* Біздің жағдайымызда листке сан беру арқылы рандомны 10 санды аламыз
 олар басында алған x және y айнымалылары  */
  rand(list,x,y);

  for (var i in list){
    print(i);
  }
  var max = maxValue(list);
  print("Max = $max");
  var min = minValue(list);
  print("Min = $min");
}