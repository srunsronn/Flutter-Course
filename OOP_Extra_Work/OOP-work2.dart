class House {
  List<Window> windows = [];
  Door door;
  Roof roof;
  Chemney chemney;
  List<Tree> trees = [];

  House(this.chemney, this.door, this.roof, this.trees, this.windows);

  void addNewTree(Tree newTree) {
    this.trees.add(newTree);
  }

  void addNewWindow(Window newWindow) {
    this.windows.add(newWindow);
  }

  @override
  String toString() {
    return "House ($roof - $chemney - $door - $trees - $windows)";
  }
}

class Roof {
  final String type;

  Roof(this.type);

  @override
  String toString() {
    return 'Roof: $type';
  }
}

class Color {}

class Window {
  final String side;
  final String floor;
  final Color? color;

  Window(this.side, this.floor, [this.color]);

  @override
  String toString() {
    return 'Window(side: $side, floor: $floor, color: $color)';
  }
}

class Chemney {
  bool hasChemney;

  String position;

  Chemney(this.hasChemney, this.position);

  @override
  String toString() {
    return 'Chemney: ${hasChemney == true ? 'has' : 'no'} - $position';
  }
}

class Door {
  String position;
  String floor;

  Door(this.position, this.floor);

  @override
  String toString() {
    return 'Door: $position - $floor';
  }
}

class Tree {
  final int amount;
  String position;

  Tree(this.amount, this.position);

  @override
  String toString() {
    return 'Tree(amount: $amount, position: $position)';
  }
}

void main() {
  List<Tree> trees = [Tree(3, 'front')];
  List<Window> windows = [
    Window('right', 'floor 1'),
    Window('left', 'ground-floor')
  ];

  House h1 = House(Chemney(true, 'right'), Door('center', 'ground-floor'), Roof('flat'),
      trees, windows);

  // h1.addNewTree(Tree(2, 'left'));

  print(h1.chemney);
  print(h1.door);
  print(h1.roof);
  print(h1.trees); 
  print(h1.windows);
}
