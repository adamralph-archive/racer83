10 MODE 1
20 VDU 23,1,0;0;0;0;
30 COLOUR 2
40 CAR=20
50 ROAD=15
60 ANGLE=0
70 METRES=-19
80 COLOUR 2
90 PRINT TAB(0, 31) " ||||||||||||||||        ||||||||||||||"
100 IF POINT((CAR*32)+16,671)<>0 THEN 310
110 COLOUR 2
120 PRINT TAB(ROAD, 31) "||        ||"
130 METRES=METRES+1
140 COLOUR 3
150 PRINT TAB(0,0) METRES
160 COLOUR 3
170 PRINT TAB(CAR,10) "H"
180 IF INKEY(-66) THEN CAR=CAR-1 ELSE IF INKEY(-82) THEN CAR=CAR+1
190 IF CAR<1 THEN CAR=1 ELSE IF CAR>38 THEN CAR=38
200 ROAD=ROAD+ANGLE
210 IF ROAD<1 THEN ROAD=1 ELSE IF ROAD>27 THEN ROAD=27
220 TURN=RND(10)
230 IF TURN=1 THEN ANGLE=RND(1)-0.5
240 IF TURN=1 AND ((ROAD=0 AND ANGLE<0) OR (ROAD=27 AND ANGLE>0)) THEN ANGLE=0-ANGLE
250 POTHOLE=320-METRES
260 IF POTHOLE<32 THEN POTHOLE=32
270 POTHOLE=RND(POTHOLE)
280 COLOUR 1
290 IF POTHOLE<9 THEN PRINT TAB(ROAD+1+POTHOLE,30) "^"
300 GOTO 100
310 COLOUR 3
320 PRINT "GAME OVER: YOU DROVE "+STR$(METRES)+" METRES"
330 PRINT "PRESS SPACE TO PLAY AGAIN"
340 REPEAT UNTIL INKEY(-99)
350 GOTO 10
