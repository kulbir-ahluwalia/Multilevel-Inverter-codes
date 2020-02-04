float f=50;
float t=(1/f)*1000000;
float a1=10;
float a2=30;
float a3=60;
float alp1=(a1*t)/360;
float alp2=(a2*t)/360;
float alp3=(a3*t)/360;
float d=5;

int pin1=2;
int pin2=3;
int pin3=4;
int pin4=5;
int pin5=6;
int pin6=7;
int pin7=8;
int pin8=9;
int pin9=10;
int pin10=11;
int pin11=12;
int pin12=13;



void setup() { 
  
  pinMode(pin1, OUTPUT);
  pinMode(pin2, OUTPUT);
  pinMode(pin3, OUTPUT);
  pinMode(pin4, OUTPUT);
  pinMode(pin5, OUTPUT);
  pinMode(pin6, OUTPUT);
  pinMode(pin7, OUTPUT);
  pinMode(pin8, OUTPUT);
  pinMode(pin9, OUTPUT);
  pinMode(pin10, OUTPUT);
  pinMode(pin11, OUTPUT);
  pinMode(pin12, OUTPUT);
  }
  
void loop() {
 
digitalWrite(pin1, HIGH); 
digitalWrite(pin2, HIGH);  
digitalWrite(pin5, HIGH); 
digitalWrite(pin6, HIGH); 
digitalWrite(pin9, HIGH);
digitalWrite(pin10, HIGH);
    delayMicroseconds(alp1-d); 
    
digitalWrite(pin2, LOW); 
    delayMicroseconds(d); 
digitalWrite(pin4, HIGH); 
    delayMicroseconds(alp2-alp1-d);
    
digitalWrite(pin6, LOW); 
    delayMicroseconds(d);  
digitalWrite(pin8, HIGH); 
    delayMicroseconds(alp3-alp2-d); 
    
digitalWrite(pin10, LOW); 
    delayMicroseconds(d); 
digitalWrite(pin12, HIGH); 
    delayMicroseconds(t/2-(2*alp3)-d);
    
digitalWrite(pin9, LOW); 
    delayMicroseconds(d); 
digitalWrite(pin11, HIGH); 
    delayMicroseconds(alp3-alp2-d); 
 
digitalWrite(pin5, LOW); 
    delayMicroseconds(d); 
digitalWrite(pin7, HIGH); 
    delayMicroseconds(alp2-alp1-d);
 
digitalWrite(pin1, LOW); 
    delayMicroseconds(d); 
digitalWrite(pin3, HIGH); 
    delayMicroseconds((2*alp1)-d); 
  
digitalWrite(pin4, LOW); 
    delayMicroseconds(d); 
digitalWrite(pin2, HIGH); 
    delayMicroseconds(alp2-alp1-d);
  
digitalWrite(pin8, LOW); 
    delayMicroseconds(d); 
digitalWrite(pin6, HIGH); 
    delayMicroseconds(alp3-alp2-d);
    
digitalWrite(pin12, LOW); 
    delayMicroseconds(d); 
digitalWrite(pin10, HIGH); 
    delayMicroseconds(t/2-(2*alp3)-d);

digitalWrite(pin11, LOW); 
    delayMicroseconds(d); 
digitalWrite(pin9, HIGH); 
    delayMicroseconds(alp3-alp2-d);

digitalWrite(pin7, LOW); 
    delayMicroseconds(d); 
digitalWrite(pin5, HIGH); 
    delayMicroseconds(alp2-alp1-d);

digitalWrite(pin3, LOW); 
    delayMicroseconds(d); 
digitalWrite(pin1, HIGH); 
    delayMicroseconds(alp1);
 }
