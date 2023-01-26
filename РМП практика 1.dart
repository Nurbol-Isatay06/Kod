import 'dart:math'; //библотека қосамыз

void rand(List a){
  for(int i = 0; i < a.length; i++){   
    a[i] = Random().nextInt(10);        /*void функцисы арқылы. for циклін қолдана отырып,
     1-10ға дейінгі сандарды рандомны шығарамыз */
  }

}
//-----------------------------------------------
int maxValue(List a){
  int max = 0;
  for(int i = 0; i < a.length; i++){   /* List a айнымалсын пайдалана отырып, max-ка айнымалы беріп, for цикліне 
  if шартын қосып сортировка арқылы max табамыз  */
    if(max < a[i])max = a[i];
  }
  return max;
}
//-----------------------------------------------
int minValue(List a){

  int min = a[0];
  for(int i = 1; i < a.length; i++){/* List a айнымалсын пайдалана отырып, min-ка айнымалы беріп, for цикліне 
  if шартын қосып сортировка арқылы min табамыз  */
    if(min > a[i])min = a[i];
  }
  return min;
}
//-----------------------------------------------
void main(){
  const int size = 10;
  List list = List.filled(size,0);

  rand(list);

  for (var i in list){
    print(i);
  }
  var max = maxValue(list);
  print("Max = $max");
  var min = minValue(list);
  print("Min = $min");
}