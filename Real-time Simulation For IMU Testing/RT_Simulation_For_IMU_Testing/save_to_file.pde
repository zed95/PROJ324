Table dataIMU;

void initFile() {
  dataIMU = new Table();
  
  //Add table columns
  dataIMU.addColumn("x-axis");
  dataIMU.addColumn("y-axis");
  dataIMU.addColumn("z-axis");
}

void write2File(float xdat, float ydat, float zdat) {
 TableRow newRow = dataIMU.addRow();
  newRow.setFloat("x-axis", xdat);
  newRow.setFloat("y-axis", ydat);
  newRow.setFloat("z-axis", zdat);
}

void saveFile() {
  saveTable(dataIMU, "data/IMUdata.csv");
}


//Save and exit when mouse is clicked
void mouseClicked() {
   saveFile();
   exit();
}
