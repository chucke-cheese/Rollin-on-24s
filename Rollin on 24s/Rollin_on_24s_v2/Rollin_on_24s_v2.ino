const int light = 13;      // the number of the button light
const int hopper =  12;      // the number of the hopper
const int coinMech = 10;     // the number of the coin mech pin
const int creditPin = 8;     // the number of the IO Board credit pin

// variables will change:
int creditState = 0;         // variable for reading the pushbutton status
int coinState = 0;\
int count = 0;              // credit counter
int pulsecount = 0;
int timer = 0;
int timer2 = 0; 

void setup() {
  // initialize the LED pin as an output:
  pinMode(hopper, OUTPUT);
  pinMode(light, OUTPUT);
  // initialize the pushbutton pin as an input:
  pinMode(creditPin, INPUT_PULLUP);
  pinMode(coinMech, INPUT_PULLUP);
  digitalWrite(hopper, HIGH);
  digitalWrite(light, HIGH);
  Serial.begin(9600);
}

void loop() {
  creditState = digitalRead(creditPin);
  // check if the pushbutton is pressed. If it is, the buttonState is HIGH:
  if (creditState == LOW) {
    pulsecount = ++pulsecount;
    if (pulsecount == 3){
      pulsecount = 0;
      count = ++count;
      digitalWrite(hopper, LOW);
      digitalWrite(light, LOW);
      //Serial.println(count);
      delay(1000);
    }
  }
  coinState = digitalRead(coinMech);
  if (coinState == HIGH){ //change this back to HIGH in the game
    timer = 0;
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
  timer = timer + 1;
  if (timer == 30000){
    timer2 = timer2 + 1;
    timer = 0;
  }
  Serial.println(timer);
  if (timer2 == 2){
    count = 0;
    timer = 0;
    digitalWrite(hopper, HIGH);
    digitalWrite(light, HIGH);
  }
}
