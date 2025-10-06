int bloques(List<int> alturas) {
  int i = 0;
  int j = alturas.length - 1;
  int maxIzq = 0;
  int maxDer = 0;
  int agua = 0;

  while (i < j) {
    if (alturas[i] <= alturas[j]) {
      if (alturas[i] >= maxIzq) {
        maxIzq = alturas[i];
      } else {
        agua += (maxIzq - alturas[i]);
      }
      i++;
    } else {
      if (alturas[j] >= maxDer) {
        maxDer = alturas[j];
      } else {
        agua += (maxDer - alturas[j]);
      }
      j--;
    }
  }
  return agua;
}
