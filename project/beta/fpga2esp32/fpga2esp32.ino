const char ADDR[] = {5, 17, 18, 19, 21, 22, 23, 25, 26, 27};
//#define CLK 18

void setup() {
  // put your setup code here, to run once:
  for (int n = 0; n < 10; n += 1) {
    pinMode(ADDR[n], INPUT);
  }
  //pinMode(CLK, INPUT);

  //attachInterrupt(digitalPinToInterrupt(CLK),onClock, RISING);
  
  Serial.begin(115200);
}

/*
void onClock() {
  for (int n = 0; n < 10; n += 1) {
    int bit = digitalRead(ADDR[n]) ? 1 : 0;
    Serial.print(bit);
    delay(100);
  }
  Serial.println();
}
*/

void loop() {
  // put your main code here, to run repeatedly:
  for (int n = 0; n < 10; n += 1) {
    int bit = digitalRead(ADDR[n]) ? 1 : 0;
    Serial.print(bit);
  }
  Serial.println();
  delay(100);
}
