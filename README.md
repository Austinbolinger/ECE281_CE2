ECE281_CE2
==========

decoder

CE2 06 FEB 14


#Schematic
![schematic](https://github.com/Austinbolinger/ECE281_CE2/blob/master/schematic.JPG?raw=true "Schematic") 


#Truth Table 
![alt text](https://github.com/Austinbolinger/ECE281_CE2/blob/master/truthtable.JPG?raw=true "Truth Table")
 

#Image
Here is the image of the testbench waveform (behavioral)
![alt text](https://github.com/Austinbolinger/ECE281_CE2/blob/master/testbench_behavior.JPG?raw=true "behavior") 

Here is the image of the testbench waveform (structural)
![alt text](https://github.com/Austinbolinger/ECE281_CE2/blob/master/testbenchtest.JPG?raw=true "structural") 


#Links
Decoder_Structural
https://github.com/Austinbolinger/ECE281_CE2/blob/master/Decoder_Structural.vhd

inverter
https://github.com/Austinbolinger/ECE281_CE2/blob/master/inverter.vhd

and3
https://github.com/Austinbolinger/ECE281_CE2/blob/master/myand3.vhd

testbench_behavior
https://github.com/Austinbolinger/ECE281_CE2/blob/master/testbench_behavior.vhd

testbench_structural
https://github.com/Austinbolinger/ECE281_CE2/blob/master/CE2_testbench.vhd


#Analysis
The Truth Table created was created by using the given schematic.

The testbenches were coded to test the logic gate designs from the truth table.

The testbenches output matched the Truth Table line by line. Each output matched my truth table.

Decoders detect which bit combination is being shown and translate it to a unique output.
The EN input is an enable input. As you may notice, the output is always zero unless the enable input is ENABLED. An example of a decoder is the keyboard. When a key is pressed the unique 8 bit code is sent to the computer which decodes the unique output and an unique letter is represented.


#####Documentation
C3C Pluger explained what was expected by the structural and behavioral requirements. I did not understand the difference between structural and behavioral until he explained it.

https://wiki.engr.illinois.edu/download/attachments/86048906/07-Decoders.pdf?version=1&modificationDate=1265125251000
this website helped explain a decoder to me

**Dr. Neebel** helped me debug by understanding an error code for undefined code in the test bench. I just forgot to code for the myand3 signals. 
