double distIn(int nbrDent, int engrenage1, int engrenage2) {
  return (engrenage1 / (nbrDent * 2)) + (engrenage2 / (nbrDent * 2)) + 0.003;
}

double distMm(double dist) {
  return dist * 25.4;
}

double diametrePrimitf(int nbrDent, int engrenage) {
  return engrenage / nbrDent;
}

double reduction(int engrenage1, int engrenage2) {
  return engrenage2 / engrenage1;
}
