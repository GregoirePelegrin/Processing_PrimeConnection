class PrimeClass {
  PrimeClass previous;
  int column;
  int row;
  int value;
  
  PrimeClass(int v, PrimeClass p) {
    this.value = v;
    this.column = width % this.value;
    this.row = height % this.value;
    if(p == null) {
      this.previous = this;
    } else {
      this.previous = p;
    }
  }
}
