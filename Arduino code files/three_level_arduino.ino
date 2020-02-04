float f=50;
float t=(1/f)*1000000;
float a1=10;
float a=(a1*t)/360;
float d=50;

int pin1=2;
int pin2=3;
int pin3=4;
int pin4=5;


void setup() { 
  
  pinMode(pin1, OUTPUT);
  pinMode(pin2, OUTPUT);
  pinMode(pin3, OUTPUT);
  pinMode(pin4, OUTPUT);
  }
  
void loop() {
      /*digitalWrite(pin1, LOW); 
        digitalWrite(pin2, LOW); 
         digitalWrite(pin3, LOW); 
          digitalWrite(pin4, LOW);*/
       
digitalWrite(pin3, HIGH); 
digitalWrite(pin4, HIGH);        
    delayMicroseconds(a);                             
digitalWrite(pin3, LOW); 
    delayMicroseconds(d); 
digitalWrite(pin1, HIGH); 
    delayMicroseconds((t/2)-(2*a)-d); 
digitalWrite(pin4, LOW); 
    delayMicroseconds(d);  
digitalWrite(pin2, HIGH); 
    delayMicroseconds((2*a)-d);  
digitalWrite(pin1, LOW); 
    delayMicroseconds(d); 
digitalWrite(pin3, HIGH); 
    delayMicroseconds((t/2)-(2*a)-d); 
digitalWrite(pin2, LOW); 
    delayMicroseconds(d); 
digitalWrite(pin4, HIGH); 
    delayMicroseconds(a-d);    
    }
