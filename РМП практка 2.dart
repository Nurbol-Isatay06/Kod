//---------------------------------------------------
bool isLuccy(int a){
  if(a%10 + (a%100)/10 == a/1000 + (a~/100)%10){
    return true;
  }
  else return false;
}
//---------------------------------------------------
void swap(int a, int b, int c, int d){
  int tempb = b;
  b = a;
  int tempc = c;
  c = tempb;
  int tempd = d;
  d = tempc;
  a = tempd;
  print("a = $a, b = $b, c = $c, d = $d");
  
}
//-------------------------------------------------------
void sum(int a, int b) => print(a+b); 

dynamic com({Function? function , var a, var b}){

}
//-----------------------Функция-------------------------------
void main(List<String> args) 
{
  print(isLuccy(1304));
  int a = 1, b = 2, c = 3,d = 4;
  swap(a, b, c, d);
  sum(1,2);
  com(function:sum,a:1,b:2);

}