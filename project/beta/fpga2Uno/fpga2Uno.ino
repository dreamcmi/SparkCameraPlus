#include <SPI.h>

char buf;

volatile byte pos;

void setup(void) {
  // put your setup code here, to run once:
  Serial.begin(9600);
  pinMode(MISO, OUTPUT);
  pinMode(MOSI, INPUT);
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
}
