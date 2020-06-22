# TwO-O-Player Math Game

## Class Game

Will be the main class That will handle the anouncer POV. The game will be outputting amessage for eah turn depending on the status of the match. "--New turn--" both players lives are greater than 0 and "--Game Over--" if one of the players has 0 lives.

[x] The game class will manage who the current player is and will control the looping proccess of the game

- The looping proccess will be a while loop that will keep outputting the amount of lives each player has and the status of the game until a player has 0 lives and after each turn thelives will be checked.

[x] The game class will be instantiated with 2 players, player 1 and player2
[x] The game will have a method that calls a method from the player class instantiation when aquestion is answered wrong triggering the players lives to reduce by 1.

[x]I thinking that the user i/o should be hosted on this class but I'm not sure.
Can use an array that has both players in it. Have the first element in the array to be the current player and use a shift method or something to change the current players after each question

## Player Class

[x]This class will be initialized with 3 lives. It will have a public method that can be called to reduce the players lives by one.

## RandomQuestion module and class

Create question class that, can generate a random question that adds and retruns a string of the question. Also have a method that has the answer to the specific question being asked.
