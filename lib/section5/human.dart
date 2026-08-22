class Human {
  late int _numOfArms;
  String name;
  Human(this.name){  
    _numOfArms = 2;
}
void setNumOfArms(int numOfArms){
  if(numOfArms >=0 && numOfArms <= 2){
    _numOfArms = numOfArms;

}}
int getNumOfArms(){
  return _numOfArms;
}
}