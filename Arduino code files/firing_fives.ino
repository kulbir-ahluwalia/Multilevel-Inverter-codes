float f=50;
float t=(1/f)*1000000;
float a1=10;
float a2=40;
float alp1=(a1*t)/360;
float alp2=(a2*t)/360;
float d=5;

int pin1=1;
int pin2=2;
int pin3=3;
int pin4=4;
int pin5=5;
int pin6=6;
int pin7=7;
int pin8=8;


void setup() { 
  
  pinMode(pin1, OUTPUT);
  pinMode(pin2, OUTPUT);
  pinMode(pin3, OUTPUT);
  pinMode(pin4, OUTPUT);
  pinMode(pin5, OUTPUT);
  pinMode(pin6, OUTPUT);
  pinMode(pin7, OUTPUT);
  pinMode(pin8, OUTPUT);
  }
  
void loop() {
 
digitalWrite(pin1, HIGH); 
digitalWrite(pin2, HIGH);  
digitalWrite(pin5, HIGH); 
digitalWrite(pin6, HIGH); 
    delayMicroseconds(alp1-d); 
    
digitalWrite(pin2, LOW); 
    delayMicroseconds(d); 
digitalWrite(pin4, HIGH); 
    delayMicroseconds(alp2-alp1-d);
    
digitalWrite(pin6, LOW); 
    delayMicroseconds(d);  
digitalWrite(pin8, HIGH); 
    delayMicroseconds(t/2-(2*alp2)-d); 
    
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
    delayMicroseconds(t/2-(2*alp2)-d); 
  
  digitalWrite(pin7, LOW); 
    delayMicroseconds(d); 
digitalWrite(pin5, HIGH); 
    delayMicroseconds(alp2-alp1-d);
  
  digitalWrite(pin3, LOW); 
    delayMicroseconds(d); 
digitalWrite(pin1, HIGH); 
    delayMicroseconds(alp1);  
    }
