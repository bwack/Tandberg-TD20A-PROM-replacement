# Tandberg-TD20A-PROM-replacement

A few attempts to solve the problematic, hard to get, hard to program PROM in the Tandberg TD20A Reel to Reel Tape Recorder PROM (U3).

Assembler program written by BWACK 2020.
ROM dumps by Knut Baardsen. RIP. You will always be missed.

Cut pin15 for 15 IPS, ground pin15 for 7.5 IPS

This project was successful. A chip is now installed in a real product that needed repair.
You can see all about it in these two videos:

## Programming

I used the TL866. Load the hex file, set the correct fuses (see the .fuses file).
For myself I have installed minipro on ubuntu, and this is what I run:

minipro -p ATTINY2313 -c code -f ihex -w tda20_prom_attiny2313.hex && \
minipro -p ATTINY2313 -c config -w tda20_prom_attiny2313.fuses

## YouTube videos:

[![videothumb](http://i3.ytimg.com/vi/v1Pzl6MGUO8/0.jpg)](http://www.youtube.com/watch?v=v1Pzl6MGUO8 "Creating a PROM replacement using ATTiny2313 and the AVRA Macro Assembler - Tandberg TD20A PROM IC")

TD20 update video showing the chip in action:

[![videothumb](http://i3.ytimg.com/vi/RYnCFkmXLnY/0.jpg)](http://www.youtube.com/watch?v=RYnCFkmXLnY "Tandberg TD 20A update and ATtiny1606 breakout boards (soldering video)")

