class EntreAxeCalcul {
  int nbrDentCourroie;
  int engrenage1;
  int engrenage2;
  double dist;

  EntreAxeCalcul({this.nbrDentCourroie, this.engrenage1, this.engrenage2});


  double distIn() {
    dist = (engrenage1 / (nbrDentCourroie * 2)) + (engrenage2 / (nbrDentCourroie * 2)) + 0.003;
    return dist;
  }

  double distMm() {
    return dist * 25.4;
  }

  double diametrePrimitf1() {
    return engrenage1 / nbrDentCourroie;
  }

  double diametrePrimitf2() {
    return engrenage2 / nbrDentCourroie;
  }

  double reduction() {
    return engrenage2 / engrenage1;
  }
}