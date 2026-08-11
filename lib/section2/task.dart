void main(){

  int second =3666;
  int hour =second~/3600;
  int secondRemainder= second%3600;
  int minute = secondRemainder~/60;
  int second2 = secondRemainder%60;
  print ("hour:$hour");
  print ("minute:$minute");
  print ("second:$second2");

}