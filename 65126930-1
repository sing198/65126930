import 'dart:math';

String calculateTriangleArea(double sideA, double sideB, double sideC) {
  if (sideA <= 0 || sideB <= 0 || sideC <= 0) {
    return "Error: All side lengths must be positive numbers.";
  }

  if ((sideA + sideB <= sideC) || (sideA + sideC <= sideB) || (sideB + sideC <= sideA)) {
    return "Error: The given sides do not form a triangle.";
  }

  double semiPerimeter = (sideA + sideB + sideC) / 2;
  double area = sqrt(semiPerimeter * (semiPerimeter - sideA) * (semiPerimeter - sideB) * (semiPerimeter - sideC));
  return area.toString();
}

void main() {
  double sideA = 3.0;
  double sideB = 4.0;
  double sideC = 5.0;

  String result = calculateTriangleArea(sideA, sideB, sideC);
  print(result);
}
