class Person{
String _name;
int _id;
int _year,_month,_day;
DateTime _birthDate;

Person(this._name,this._id,this._day,this._month,this._year)
:_birthDate = DateTime(_year,_month,_day);


int calculateAge(DateTime birthdate){
DateTime today =DateTime.now();
int age =today.year-birthdate.year;
if(today.month<birthdate.month||(today.month == birthdate.month && today.day < birthdate.day)){
age--;
}
return age;
}
String getname(){
  return _name;
}
int getid(){
  return _id;
}
DateTime getbirthdate(){
  return _birthDate;
}
int getAge(){
  return calculateAge( _birthDate);

}
void setname(String n){
  _name=n;
}
void setId(int i){
  _id =i;
}
void setbirthdate(DateTime bd){
  _birthDate=bd;
}


}