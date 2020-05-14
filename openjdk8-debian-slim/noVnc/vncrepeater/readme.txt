This is my Linux port of Ultravnc repeater source code. 

Compile with command: make

Various settings can be changed via ini file uvncrepeater.ini (read comments in file). 

Step1:
repeater env:ubuntu14.04 64bit
1.run the repeater program(#./repeater ./uvncrepeater.ini).

Step2:
run the vnc server
#./androidvncserver -U [repeater IP]:[server listen port] -S repeaterID -p passwd

Step3:
run the vnc client(UltraVNC_1_2_24)
#vncviewer.exe -proxy [repeater IP]:[viewer listen port] ID:repeaterID

Note:
repeaterID=100~2147483647

Reference article:
https://blog.csdn.net/WTUDAN/article/details/100214799
