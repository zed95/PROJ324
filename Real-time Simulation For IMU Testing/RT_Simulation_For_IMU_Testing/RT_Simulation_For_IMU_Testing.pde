import processing.serial.*;

Serial myPort;  // Create object from Serial class
String val;     // Data received from the serial port




//--------------------------------------Read-Data-From-Serial-Port--------------------------------------------
float readSerialData()
{
  float val = 0.0;                                                //Declare and initalise value that will store the data from the serial port.
  
    if ( myPort.available() > 0) 
  {                                                               // If data is available,
    val = Float.parseFloat(myPort.readStringUntil('\n'));         // read data from the serial port and convert it to a float and then store the result in val
  } 
  
  return val;
}
//--------------------------------------Read-Data-From-Serial-Port--------------------------------------------




void setup()
{
  // I know that the first port in the serial list on my mac
  // is Serial.list()[0].
  // On Windows machines, this generally opens COM1.
  // Open whatever port is the one you're using.
  String portName = Serial.list()[0]; //change the 0 to a 1 or 2 etc. to match your port
  myPort = new Serial(this, "COM5", 9600);
}

void draw()
{

println(val); //print it out in the console
}
