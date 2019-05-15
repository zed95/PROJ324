Table dataIMU;

void initFile() {
  dataIMU = new Table();
  
  //Add table columns
  dataIMU.addColumn("cfx-axis");
  dataIMU.addColumn("cfy-axis");
  dataIMU.addColumn("cfz-axis");
  dataIMU.addColumn("gx-axis");
  dataIMU.addColumn("gy-axis");
  dataIMU.addColumn("gz-axis");
  dataIMU.addColumn("ax-axis");
  dataIMU.addColumn("ay-axis");
  dataIMU.addColumn("az-axis");
}

void write2File(float cfx, float cfy, float cfz, float gx, float gy, float gz, float ax, float ay, float az) {
 TableRow newRow = dataIMU.addRow();
 //save each variable under the correct columns
  newRow.setFloat("cfx-axis", cfx);
  newRow.setFloat("cfy-axis", cfy);
  newRow.setFloat("cfz-axis", cfz);
  newRow.setFloat("gx-axis", gx);
  newRow.setFloat("gy-axis", gy);
  newRow.setFloat("gz-axis", gz);
  newRow.setFloat("ax-axis", ax);
  newRow.setFloat("ay-axis", ay);
  newRow.setFloat("az-axis", az);
}

//Save the data to the following file
void saveFile() {
  saveTable(dataIMU, "data/IMUdata.csv");
}


//Save and exit when mouse is clicked
void mouseClicked() {
   saveFile();
   exit();
}
