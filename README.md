# Snake – The Engduino Game 

Snake – The Engduino Game is a classic example of Snake game, which uses Engduino (Arduino based board) as motion-controller (or a keyboard, alternatively), to steer the snake.

## In a nutshell
Move the snake by tilting the Engduino. The bigger the tilt the faster the snake moves. Eat cherries to feed the snake and make it bigger. Avoid colliding with walls and the snake’s tail. Engduino button resets the game. There are 3 levels available. Level 1 is loaded by default. To change the level press button 1, 2 or 3 on the keyboard and trigger reset. Make sure to click on the game window first, so that so that your operational system knows which window you are pressing the buttons for (it’s not the game window by default). Enjoy!

## Snake control - Engduino
The snake is controlled by tilting the Engduino. The direction of the tilt changes the direction of snake’s movement adequately (i.e. tilting Engduino forwards will cause the snake move upwards, backwards – downwards, leftwards – leftwards and rightwards adequately).

### Snake movement mechanics 
Snake will proceed onto a field in front of it as long as it’s empty. If snake is moving along its tail or a wall, it is impossible to change the direction towards them to cause a collision. Along a tail/wall means right next to it and parallel to it. In other words, it’s impossible to cause a collision if there is no any empty field between the snake and the obstacle when snake is not approaching it perpendicularly.

There are 3 speed levels of Snake movement. The bigger the tilt of Engduino the faster the snake moves. 
 - slight tilt – 2 moves/second 
 - moderate tilt – 6 moves/second
 - big tilt – 12 moves/second
If Engduino is held straight, i.e. it’s not tilted, the snake will not change the direction of its movement. 
Snake is on halt at start of the game. Tilt Engduino to start the game.

## Snake control - Keyboard
**W/A/S/D** - controls
**U/I/O/P** - snake speed x1/x2/x4/x8
**1/2/3** - next level choice 
**R** - restart (uploads the latest chosen level, 1 by default)

## General rules
Snakes becomes bigger by ‘eating’ cherries that appear randomly on the playboard. The purpose of the game is to make the snake as big as possible before it collides into a wall or its tail. A collision ends the game. The game can be restarted at any time by pressing the Engduino button.

### Cherries appearance
Cherries locations are chosen randomly from empty fields. If new cherry isn’t eaten for a long time, an additional one will appear. There can be up to 3 cherries on the playboard at once.

### Switching between the levels
There are 3 levels available in the game. Level 1 is loaded by default. The levels can be switched between by pressing buttons 1, 2 or 3 on the keyboard. Newly chosen level will be loaded as soon as the reset button is pressed.
Having launched the game, make sure to click on the game window. It is not clicked by default, so it won’t read from the keyboard unless clicked on manually.

---
## by [Wojciech Golaszewski](https://github.com/VoytechG)
