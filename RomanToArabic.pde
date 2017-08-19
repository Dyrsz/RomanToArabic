
void setup() {
  size(100,100);
}

void draw() {
  background(0);
  text(str(toArabic("MMMDCXCIII")), 10, 10);
}

int toArabic (String n) {
  char[] sym = {'M','D','C','L','X','V','I'};
  int[] symV = {1000,500,100,50,10,5,1};
  int l = n.length();
  int v = 0;
  for (int i = 0; i < l; i++) {
    for (int j = 0; j < sym.length; j++) {
      if (n.charAt(i) == sym[j]) {
        if (j%2 == 0 && j > 1 && i+1 < l) {
          if (n.charAt(i+1) == sym[j-2]) {
            v += symV[j-2] - symV[j];
            i++;
          } else {
            v += symV[j];
          }
        } else {
           v += symV[j]; 
        }
      }
    }
  }
  return v;
}