Table dataIMU;

void initFile() {
  dataIMU = new Table();
  
  //Add table columns
  dataIMU.addColumn("x-axis");
  dataIMU.addColumn("y-axis");
  dataIMU.addColumn("z-axis");
}

void write2File(float cfx, float cfy, float cfz, float gx, float gy, float gz, float ax, float ay, float az) {
 TableRow newRow = dataIMU.addRow();
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
void saveFile() {
  saveTable(dataIMU, "data/IMUdata.csv");
}


//Save and exit when mouse is clicked
void mouseClicked() {
   saveFile();
   exit();
}
