const int gas_input = A0;
int gas = 0;
const int led = 6;

void setup()
{
  pinMode(led,OUTPUT);
  Serial.begin(9600);
}

void loop()
{
  gas  = analogRead(gas_input);
  Serial.println(gas);
  int reading = map(gas, 80, 400, 0, 255); 
  analogWrite(led,reading);
  delay(100);
}	