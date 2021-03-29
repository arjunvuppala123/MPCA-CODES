const int trigpin = 7;
const int echoPin = 6;
long duration=0,distance=0;
void setup(){
  Serial.begin(9600);
  pinMode(trigpin,OUTPUT);
  pinMode(echoPin,INPUT);
}
void loop(){
  digitalWrite(trigpin,LOW);
  delayMicroseconds(5);        
  digitalWrite(trigpin,HIGH);  
  delayMicroseconds(10);      
  digitalWrite(trigpin,LOW); 
  distance=pulseIn(echoPin,HIGH);      
  distance = distance/58;               
  Serial.print ("Distance = ");
  Serial.print (distance);         
  Serial.print (" cm");         
  Serial.write (10);            
  delay (200);                
}         