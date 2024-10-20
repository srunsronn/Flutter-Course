class MyDuration {
  final int _milliseconds;

  MyDuration(this._milliseconds) {
    if (_milliseconds < 0) {
      throw new ArgumentError('Duration cannot be negative');
    }
  }

  MyDuration.fromHours(int hour) : this(hour * 3600000);
  MyDuration.fromMinutes(int minute) : this(minute * 60000);
  MyDuration.fromSeconds(int second) : this(second * 1000);

  // operator compare
  bool operator >(MyDuration other) {
    return _milliseconds > other._milliseconds;
  }

  //operator add two durations
  MyDuration operator +(MyDuration other) {
    return MyDuration(_milliseconds + other._milliseconds);
  }

  //operator minus two durations
  MyDuration operator -(MyDuration other) {
    if (_milliseconds < other._milliseconds) {
      throw ArgumentError('Duration cannot be negative');
    }

    return MyDuration(_milliseconds - other._milliseconds);
  }

  // Display the duration in a readable format
  @override
  String toString() {
    int seconds = (_milliseconds / 1000).round();
    int minutes = (seconds / 60).floor();
    seconds = seconds % 60;
    int hours = (minutes / 60).floor();
    minutes = minutes % 60;
    return '$hours hours, $minutes minutes, $seconds seconds';
  }
}

void main() {
  MyDuration duration1 = MyDuration.fromHours(3); // 3 hours
  MyDuration duration2 = MyDuration.fromMinutes(45); // 45 minutes
  print(duration1 + duration2); // 3 hours, 45 minutes, 0 seconds
  print(duration1>duration2); //true

  try {
    print(duration2 - duration1); // This will throw an exception
  } catch (e) {
    print(e);
  }
}
