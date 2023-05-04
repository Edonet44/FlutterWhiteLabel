enum TypeMode {
  list,
  grid,
}

class ViewMode {
  static TypeMode? moduli;

  TypeMode get state => moduli!;

set state(TypeMode newState){
moduli=newState;

}

}
