class Window {
  // properties
  String color;
  String side;
  int amount;
  String floor;

  //constructor
  Window(this.color, this.side, this.floor, this.amount);

  @override
  String toString() {
    return '(Window: $color, $side, on stair: $floor, amount: $amount )';
  }
}

class Roof {
  // properties
  // List<String> types = ["box", "m", "gambrel", "flat"];
  String type;

  //constructor
  Roof(this.type);

  @override
  String toString() {
    return '(Roof: $type)';
  }
}

// Chimney class
class Chimney {
  // propertie
  bool? hasChimney;

  //constructor
  Chimney(this.hasChimney);

  @override
  String toString() {
    return '(Chimney: ${hasChimney == true ? 'has' : 'no'})';
  }
}

//Door class
class Door {
  bool? hasDoor;
  String? position;

  // contructor
  Door(this.hasDoor, [this.position]);

  @override
  String toString() {
    return '(Door: ${hasDoor == true ? 'has' : 'no'}, position: $position)';
  }
}

//House class
class House {
  // properties
  Roof roof;
  List <Window> windows;
  Chimney chimney;
  Door door;

  //constructor
  House(this.roof, this.windows, this.chimney, this.door);

  @override
  String toString() {
    return 'House { $roof, $windows, $chimney, $door}';
  }
}

void main() {
  // instance 1
  House h1 = House(
    Roof('box'),
    [
      Window('red', 'left', 'stair 1', 1),
      Window('green', 'right', 'stair 1', 1),
      Window('red', 'left and right', 'stair 1', 2),
    ],
    Chimney(true),
    Door(true, 'center'),
  );

  //inatance 2
  House h2 = House(
    Roof('m-shape'),
    [
      Window('green', 'left', 'stair 1', 1),
    ],
    Chimney(true),
    Door(false),
  );

  //inatance 3
  House h3 = House(
    Roof('gambrel'),
     [
      Window('cryan', 'left', 'ground floor', 1),
    ],
    Chimney(true),
    Door(true,  'right'),
  );

  //inatance 3
  House h4 = House(
    Roof('flat'),
    [
      Window('cryan', 'left', 'stair 1', 1),
      Window('red', 'left and right', 'ground floor', 2),
    ],
    Chimney(false),
    Door(true,  'center'),

  );

  print(h1);
  print(h2);
  print(h3);
  print(h4);

}
