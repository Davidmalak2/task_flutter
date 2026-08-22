void main(){
  evenAndOddNum(10);
  evenAndOddNum(15);
}
void evenAndOddNum(int num){
  if(num % 2 == 0){
    print("$num is an even number");
  }else{
    print("$num is an odd number");
  }
}