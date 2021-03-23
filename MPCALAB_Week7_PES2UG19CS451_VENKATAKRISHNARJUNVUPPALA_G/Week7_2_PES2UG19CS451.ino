int delayTime = 2000;
int greenLED = 13;
void setup() {

	pinMode(greenLED, OUTPUT);

}

void loop() {

	digitalWrite(greenLED, HIGH);
	delay(delayTime);
	digitalWrite(greenLED, LOW);
	delay(delayTime);

}