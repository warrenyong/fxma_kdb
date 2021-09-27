# fxma_kdb
FX Moving Average in kdb+

1) Open cmd

2) Ensure you are in directory with FX files and fxma script (this directory)

	a. In windows you can navigate to directory using 
		e.g. cd C:\Users\Warren Yong\Desktop\fxma
	
	b.Check schema of csv file to have 3 columns DATE, OPEN and CLOSE prices

3) Type the following in the command line:
q fxma.q <FX files required>
e.g. q fxma.q gbpjpy usdjpy

4) Upon execution, you will see the following lines printed:
e.g.
"Data for gbpjpy successfully saved as gbpjpy_processed.csv"
"Data for usdjpy successfully saved as usdjpy_processed.csv"

5) Check directory for files
