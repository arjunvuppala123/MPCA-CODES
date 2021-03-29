const int buzzerPin = 9; 
	void setup() 
	{
		pinMode(buzzerPin, OUTPUT); 
	}
   	void loop() 
	{ 	tone(buzzerPin, 50); 
		delay(50);
 		noTone(buzzerPin); 
		delay(100);
	} 