const int light = 13;      // the number of the button light
const int hopper =  12;      // the number of the hopper
const int coinMech = 10;     // the number of the coin mech pin
const int creditPin = 8;     // the number of the IO Board credit pin

// variables will change:
int creditState = 0;         // variable for reading the pushbutton status
int coinState = 0;\
int count = 0;              // credit counter

void setup() {
  // initialize the LED pin as an output:
  pinMode(hopper, OUTPUT);
  pinMode(light, OUTPUT);
  // initialize the pushbutton pin as an input:
  pinMode(creditPin, INPUT_PULLUP);
  pinMode(coinMech, INPUT_PULLUP);
  digitalWrite(hopper, HIGH);
  digitalWrite(light, HIGH);
  //Serial.begin(9600);
}

void loop() {
  creditState = digitalRead(creditPin);
  // check if the pushbutton is pressed. If it is, the buttonState is HIGH:
  if (creditState == LOW) {
    count = ++count;
    digitalWrite(hopper, LOW);
    digitalWrite(light, LOW);
    delay(250);
    //Serial.println(count);
  }
  coinState = digitalRead(coinMech);
  if (coinState == HIGH){
    if (count > 0){
      count = count - 1;
    }
    if (count == 0){
      digitalWrite(hopper, HIGH);
      digitalWrite(light, HIGH);
    }
    //Serial.println(count);
    delay(250);
  }
}
