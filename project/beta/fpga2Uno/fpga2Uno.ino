#include <SPI.h>

char buf;

volatile byte pos;

void setup(void) {
  // put your setup code here, to run once:
  Serial.begin(9600);
  pinMode(MISO, OUTPUT);
  pinMode(MOSI, INPUT);
  //pinMode(LED_BUILTIN, OUTPUT);
  SPCR |= _BV(SPE);
  SPCR |=0x88;
  pos = 0;
}

char SPI_SlaveReceive(void){
  while(!(SPSR & (1<<SPIF)));
  return SPDR;
}

void loop(void) {
  // put your main code here, to run repeatedly:
  buf = SPI_SlaveReceive();
  Serial.write(buf);
  /*
  digitalWrite(LED_BUILTIN, HIGH);   // turn the LED on (HIGH is the voltage level)
  delay(100);                       // wait for a second
  digitalWrite(LED_BUILTIN, LOW);    // turn the LED off by making the voltage LOW
  delay(100);                       // wait for a second
  */
}
