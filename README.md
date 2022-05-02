The purpose of this project is to take a coin operated game such as UNIS's Rollin' On 24's, and modify it so that the guest no longer has to reach up to the top of the game where the coin mech is to play the game. The guest will be able to play the game from a button on the game, so that shorter guests can comfortably play the game.

If the game to modified is in an establishment that no longer uses tokens, the machine may be modified already to use a coin dispenser system, such as Speedy's One Stop Shop's Coin Hopper Mounting System (see ref 1). This system includes everything that one would need to make a coin operated game able to use a card system. The brains behind this system is a hopper control board that dispences the coin to the guest when it receives a credit-in signal. In the case of Speedy's control board, the credit input line is red. This line and any one of the six ground lines is the focus of this project.

The Items needed for this project are:

1.) Arduino (code provided)

2.) 2 channel relay board

3.) light-up button

4.) Arduino IDE (required to upload Arduino code to Arduino)

Optional Item:

base for arduino and 2 channel relay board (stl and gcode files provided)

The circuit needed for this project is named "Modified Hopper Wiring.pdf" Keep in mind that for this to work, there must be enough room next to the coin chute to place a hopper so that the hopper can dispense the coin directly into the game. Games such as UNIS's Rollin' on 24's or UNIS's Basket Fortune have enough room next to the coin chute.

The subroutine flow chart for the hopper control board is listed in the patent information (see ref 2). This does not change in this project. Normally, when the guest taps or swipes their card, the card system sends a credit-in signal to the hopper control board to tell it to dispense a coin. This project interupts that signal. Instead, the signal goes to an arduino, which counts the credit-in as a +1. The Arduino also engages a relay that allows the guest to press a button that sends the credit-in signal to the hopper control board. The light in the button also lights up, from another relay. When the hopper dispenses the coin into the game, the coin triggers a coin switch that tells the game that a coin has been inserted. This switch also tells the Arduino the same thing, causing the Arduino to count a -1. Once the count in the Arduino reaches 0, both relays switch off, turning off the light in the button, and disengaging the button. The counter in the Arduino allows for multi-credit input, retaining the credit until played, or the game is turned off.


References

1.)     http://www.alphaomegasales.com/token-hopper-mounting-system-quick-coin-games-speedys-one-stop/
        
        http://www.sosrepairservice.com/downloads/Speedys_Coin_Hopper_Brochure.pdf#toolbar=0
        
        http://www.sosrepairservice.com/coinhopper.asp

2.)     https://patft.uspto.gov/netahtml/PTO/index.html Patent number US 10,223,867 B2


Interesting github, unrelated to this project: https://github.com/telarium/chuckECheese_animatronic
