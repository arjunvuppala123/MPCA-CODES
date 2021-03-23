int LED=9; 
int brightness=0; 	
int fading=5; 		
void setup()
{	pinMode(LED, OUTPUT); 
}
void loop()
{
  analogWrite (LED, brightness); 
brightness=brightness + fading;
delay(25);
if(brightness==0 || brightness== 255)
{
fading= -fading;
}}