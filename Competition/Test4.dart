class Distance {
  final double distance;

  const Distance(this.distance);

  Distance.cms(double centimetere) : distance = centimetere / 100;

  Distance.meters(double meter) : distance = meter;

  Distance.kms(double kilometer) : distance = kilometer * 1000;

  //getter
  double get kms => distance / 1000;
  double get meters => distance;
  double get cms => distance * 100;

  @override
  String toString() {
    return "$distance";
  }

  Distance operator +(Distance d) {
    return Distance(this.distance + d.distance);
  }
}

void main() {
  Distance d1 = Distance.cms(100.0);
  Distance d2 = Distance.meters(20.0);
  print(d1.meters);
  print((d1 + d2).kms);
}
