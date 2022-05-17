The purpose of this project is to take a coin operated game such as UNIS's Rollin' On 24's, and modify it so that the guest no longer has to reach up to the top of the game where the coin mech is to play the game. The guest will be able to play the game from a button on the game, so that shorter guests can comfortably play the game.

If the game to be modified is in an establishment that no longer uses tokens, the machine may be modified already to use a coin dispenser system, such as Speedy's One Stop Shop's Coin Hopper Mounting System (see ref 1). This system includes everything that one would need to make a coin operated game able to use a card system (except the card system.) The brains behind this system is a hopper control board that dispences the coin to the guest when it receives a credit-in signal. In the case of Speedy's control board, the credit input line is red. This line and any one of the six ground lines is the focus of this project.

The circuit needed for this project is named "Modified Hopper Wiring.pdf" Keep in mind that for this to work, there must be enough room next to the coin chute to place a hopper so that the hopper can dispense the coin directly into the game (see Example.jpg). Games such as UNIS's Rollin' on 24's or UNIS's Basket Fortune have enough room next to the coin chute.

The Items needed for this project are:

1.) Arduino (code provided)

2.) Arduino IDE (required to upload Arduino code to Arduino)

3.) 2 channel relay board

4.) light-up button

5.) Base for arduino and 2 channel relay board (stl and gcode files provided) (Optional)

Basic Version of Getting started in Arduino (see ref 2A)

The Arduino Uno is the basic beginners board (as well as the most common.) It has 14 digital input/outputs, 6 analog inputs, and a 16MHz clock. This allows it to interface with a variety of sensors and applications. The Uno operates at 5V, and can be powered via the USB port, or it can take an input voltage of 6-20V (7-12 recommended) on the Vin pin. It can also be powered through the barrel jack at 12V.The 5V pin can supply 1A max for powering external sensors and outputs, if more then that is required you need an external power supply. If you try to draw more then 1A, the board will be damaged. The Arduino Uno measures 2.7" by 2.1". After installing the Arduino IDE, you can begin programming the Arduino. After creating the code, or opening existing code, go to "Tools" - "Board", and choose which board you are using. Then, go to "Tools" - "Port" and choose the port that corresponds to your Arduino. Optimally, if you have only one Arduino plugged in, the port shown in the menu should be the correct one. More information and troubleshooting options can be found in ref 2B if you are having issues getting everything working. Reference 2C is the Arduino list of boards and products.

The 2-channel relay board is different from just 2 relays, because 2 relays would draw all their current from the digital pins of the Arduino, possibly damaging it. The 2-channel relay board adraws its power from either the 5v pin of the Arduino, or an external 5v power supply, and takes only its signal from the digital pins.

The subroutine flow chart for the hopper control board is listed in the patent information (see ref 3). This does not change in this project. Normally, when the guest taps or swipes their card, the card system sends a credit-in signal to the hopper control board to tell it to dispense a coin. This project interupts that signal. Instead, the signal goes to an arduino, which counts the credit-in as a +1. The Arduino also engages a relay that allows the guest to press a button that sends the credit-in signal to the hopper control board. The light in the button also lights up, from another relay. When the hopper dispenses the coin into the game, the coin triggers a coin switch that tells the game that a coin has been inserted. This switch also tells the Arduino the same thing, causing the Arduino to count a -1. Once the count in the Arduino reaches 0, both relays switch off, turning off the light in the button, and disengaging the button. The counter in the Arduino allows for multi-credit input, retaining the credit until played, or the game is turned off.

The coinmech will have to be removed for this to work. The hole will have to be covered by something. ICE Games sells a "Marquee Ball Catch" (RB3042) that works well for this, as it is a 1/8" thick sheet of black plastic.

For reference, the card system has an Interface Board with these connections:

All black wires are common ground, and all red wires are common 12VDC. This board contains 2 relays. One is connected to J3, and the other is a feature that enables the ticket mech shound the reader be unplugged.

J1 connects in between the Ticket mech and the game. It is a good idea to power the card reader system from an external power supply, rather than taking power from the game's power supply. This can be done using a 12VDC power supply plugged into the on board barrel jack (J7), or by cutting the red wire coming from J1 and wiring the board side of the wire to a 12VDC power supply. There are six wires coming from this connector. Pin 1 is white and black, and goes to the game enable. Pin 2 s common ground. Pin 3 is common 12VDC. Pin 4 is blue and black, and goes to game notch. Pin 5 is white, and goes to the ticket mech enable (which is normally disconnected inside the interface board, but is enabled if the reader is disconnected.) Pin 6 is blue and connects to the mech notch.

J2 connects to the coin signal from game via the brown wire. The red and black wires are generally not used.

J3's brown wire is the coin enable, or in the case of this circuit, connects to the arduino to tell the arduino to count up 1 credit. Connect the black wire to a ground pin of the Arduino.

J5 connects to the reader via a ribbin cable.

J7 connects to an optional external 12VDC power supply.

References

1A.)http://www.alphaomegasales.com/token-hopper-mounting-system-quick-coin-games-speedys-one-stop/
        
1B.)http://www.sosrepairservice.com/downloads/Speedys_Coin_Hopper_Brochure.pdf#toolbar=0
        
1C.)http://www.sosrepairservice.com/coinhopper.asp

2A.)https://www.instructables.com/Getting-Started-with-Arduino-3/

2B.)https://www.arduino.cc/en/Guide/HomePage

2C.)www.arduino.cc/en/Main/Products

3.)https://patft.uspto.gov/netahtml/PTO/index.html Patent number US 10,223,867 B2


Interesting github, unrelated to this project: https://github.com/telarium/chuckECheese_animatronic


