abstract class Animal{
  String _name;
  Animal(this._name);
  void makeSound();
  String getName(){
    return _name;
  }
}
class Lion extends Animal{
  double _maneSize;
  Lion(super._name,this._maneSize){

  }
  @override
  void makeSound(){
    print("Roar!");
  }
  double get maneSize{
    return _maneSize;
  }
  set maneSize(double size){
    if(size>=0){
      _maneSize = size;
    }else{
      throw ArgumentError("Mane size cannot be negative");
    }
  }

}

class Elephant extends Animal{
  double _trunkLength;
  Elephant(super._name,this._trunkLength){

  }
  @override
  void makeSound(){
    print("Trumper!");
  }
  double get trunkLength{
    return _trunkLength;
  }
  set trunkLength(double length){
    if(length>=0){
      _trunkLength = length;
    }else{
      throw ArgumentError("Trunk length cannot be negative");
    }
  }

}

class Parrot extends Animal{
  int _vocabularySize;
  Parrot(super._name,this._vocabularySize){

  }
  @override
  void makeSound(){
    print("Squawk! Hello!");
  }
  int get vocabularySize{
    return _vocabularySize;
  }
  set vocabularySize(int size){
    if(size>=0){
      _vocabularySize = size;
    }else{
      throw ArgumentError("Vocabulary size cannot be negative");
    }
  }

}

void main(){
  List<Animal> zoo = [];
  zoo.add(Lion("Axe", 27.5));
  zoo.add(Elephant("Fatty", 150.0));
  zoo.add(Parrot("Kez", 5));


  for (var animal in zoo) {
    print("Name: ${animal.getName()}");

    if (animal is Lion) {
      print("Mane Size: ${animal.maneSize} cm");
    } else if (animal is Elephant) {
      print("Trunk Length: ${animal.trunkLength} cm");
    } else if (animal is Parrot) {
      print("Vocabulary Size: ${animal.vocabularySize} words");
    }

    print("Sound: ");
    animal.makeSound();
    print("************");
  }


}