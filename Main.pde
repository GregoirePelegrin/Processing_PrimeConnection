ArrayList<PrimeClass> primes;
int upperBound;

void setup() {
  size(800, 801);
  frameRate(30);
  noLoop();
  background(255);
  stroke(0, 100);
  
  primes = new ArrayList<PrimeClass>();
  upperBound = width;
  
  generatePrimeList();
}

void draw() {
  for(PrimeClass p : primes) {
    line(p.previous.column, p.previous.row, p.column, p.row);
  }
}

boolean isPrime(int n) {
  float rootNbr = pow(n, 0.5);
  
  for(PrimeClass p : primes) {
    int currVal = p.value;
    if(currVal <= rootNbr) {
      if(n % currVal == 0) {
        return false;
      }
    } else {
      break;
    }
  }
  
  return true;
}

void generatePrimeList(){
  int index = 0;
  primes.add(new PrimeClass(2, null));
  for(int i=3; i<upperBound; i++) {
    if(isPrime(i)) {
      primes.add(new PrimeClass(i, primes.get(index)));
      index ++;
    }
  }
}
