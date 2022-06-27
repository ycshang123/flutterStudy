class Rect {
  int height;
  int width;

  Rect()
      : height = 2,
        width = 10 {
    print("$height --- $width");
  }

  getArea() {
    return height * width;
  }
}

void main() {
  Rect r = new Rect();
  //2 --- 10
  //20
  print(r.getArea());
}
