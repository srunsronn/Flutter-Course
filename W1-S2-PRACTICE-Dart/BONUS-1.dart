enum Direction { north, east, south, west }

void main() {
  // Initial position {7, 3} and facing north
  int x = 7;
  int y = 3;
  Direction direction = Direction.north;

  // Example instruction sequence
  const instructions = "RAALAL";

  // Process the instructions and get the final position and direction
  for (var c in instructions.split("")) {
    switch (c) {
      case "R":
        direction = turnRight(direction);
        break;

      case "L":
        direction = turnLeft(direction);
        break;

      case "A":
        var newPosition = advance(x, y, direction);
        x = newPosition[0];
        y = newPosition[1];
        break;

      default:
        print("Invalid instruction");
    }
  }

  // Print the final position and direction
  print("Final position: ($x, $y)");
  print("Facing: ${directionToString(direction)}");
}

// Function to turn right
Direction turnRight(Direction dir) {
  return Direction.values[(dir.index + 1) % 4];
}

// Function to turn left
Direction turnLeft(Direction dir) {
  return Direction.values[(dir.index - 1 + 4) % 4];
}

// Function to advance the robot's position
List<int> advance(int x, int y, Direction dir) {
  if (dir == Direction.north) {
    y++;
  } else if (dir == Direction.south) {
    y--;
  } else if (dir == Direction.east) {
    x++;
  } else {
    x--;
  }
  return [x, y]; 
}

// Function to convert direction to string for display
String directionToString(Direction dir) {
  switch (dir) {
    case Direction.north:
      return 'NORTH';
    case Direction.east:
      return 'EAST';
    case Direction.south:
      return 'SOUTH';
    case Direction.west:
      return 'WEST';
    default:
      return '';
  }
}
