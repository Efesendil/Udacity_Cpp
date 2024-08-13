# CPPND: Capstone Snake Game Example

This is a starter repo for the Capstone project in the [Udacity C++ Nanodegree Program](https://www.udacity.com/course/c-plus-plus-nanodegree--nd213). The code for this repo was inspired by [this](https://codereview.stackexchange.com/questions/212296/snake-game-in-c-with-sdl) excellent StackOverflow post and set of responses.

<img src="snake_game.gif"/>

The Capstone Project gives you a chance to integrate what you've learned throughout this program. This project will become an important part of your portfolio to share with current and future colleagues and employers.

In this project, you can build your own C++ application or extend this Snake game, following the principles you have learned throughout this Nanodegree Program. This project will demonstrate that you can independently create applications using a wide range of C++ features.

## Dependencies for Running Locally
* cmake >= 3.7
  * All OSes: [click here for installation instructions](https://cmake.org/install/)
* make >= 4.1 (Linux, Mac), 3.81 (Windows)
  * Linux: make is installed by default on most Linux distros
  * Mac: [install Xcode command line tools to get make](https://developer.apple.com/xcode/features/)
  * Windows: [Click here for installation instructions](http://gnuwin32.sourceforge.net/packages/make.htm)
* SDL2 >= 2.0
  * All installation instructions can be found [here](https://wiki.libsdl.org/Installation)
  >Note that for Linux, an `apt` or `apt-get` installation is preferred to building from source. 
* gcc/g++ >= 5.4
  * Linux: gcc / g++ is installed by default on most Linux distros
  * Mac: same deal as make - [install Xcode command line tools](https://developer.apple.com/xcode/features/)
  * Windows: recommend using [MinGW](http://www.mingw.org/)

## Basic Build Instructions

1. Clone this repo.
2. Make a build directory in the top level directory: `mkdir build && cd build`
3. Compile: `cmake .. && make`
4. Run it: `./SnakeGame`.


## CC Attribution-ShareAlike 4.0 International


Shield: [![CC BY-SA 4.0][cc-by-sa-shield]][cc-by-sa]

This work is licensed under a
[Creative Commons Attribution-ShareAlike 4.0 International License][cc-by-sa].

[![CC BY-SA 4.0][cc-by-sa-image]][cc-by-sa]

[cc-by-sa]: http://creativecommons.org/licenses/by-sa/4.0/
[cc-by-sa-image]: https://licensebuttons.net/l/by-sa/4.0/88x31.png
[cc-by-sa-shield]: https://img.shields.io/badge/License-CC%20BY--SA%204.0-lightgrey.svg


## New features added

1. Resource safe file handling
  1. Definition and declarations are in the game.h
  - Line 54-57 file handling methods defined
  - Line 62-64 mutex, condition variable and file_exist variable defined
  - Line 29-42 asynchronus threads defined and implemented
  2. In the game.cpp
  - Line 94-158 file handling methods implemented
  3. In the main.cpp between line 22-27 these threads are callled
  <Criterais that are satisfied for Loops, Functions, IO/>
  - The project reads data from an external file or writes data to a file as part of the necessary operation of the program.
  - The project uses arrays or vectors and uses constant variables.
  - The project code is clearly organized into functions.
  - The project accepts user input and processes the input.
  <Criterais that are satisfied for OOP/>
  - Classes abstract implementation details from their interfaces.
  - Classes follow an appropriate inheritance hierarchy with virtual and override functions.
  - Classes abstract implementation details from their interfaces.
  <Criterais that are satisfied for Memory Management/>
  - The project uses scope / Resource Acquisition Is Initialization (RAII) where appropriate.
  <Criterais that are satisfied for Concurrency/>
  - The project uses multithreading.
  - A std::condition_variable is used in the project code to synchronize thread execution.
  - A mutex or lock (e.g. std::lock_guard or `std::unique_lock) is used to protect data that is shared across multiple threads in the project code.


2. Asking the player name
  1. Line 73 definiton of : std::unique_ptr<std::string> _name;
    - Expected behavior : Typing name into the file scores/scores.txt next to 
      <attempt no> : <score> - <name>
  <Criterais that are satisfied for Memory Management/>
  The project uses smart pointers instead of raw pointers.

3. Picking a difficulty level
  1. default value of speed is set by user
  - in the snake.h at line 12 an enum class is defined
  - then function called setInitialSpeed() at line 39 takes a reference parameter
  - then Game() constructor takes a reference parameter (line 5 of game.cpp)
  <Criterais that are satisfied for Memory Management/>
  - The project makes use of references in function declarations.


  Expected behaviour of the program : 
  - set the difficulty in the main function, game will start with a speed according to that level
  - in the terminal cd build and make, then ./SnakeGame
  - type your name in the terminal
  - close the game in the terminal, score, size and highest score achieved will be printed on the console
  - check the file ../scores/scores.txt, you will se number of attempts, scores and names of diferent players
  !!! Note that multiple games can be launched at the same time, they will still insert the logs succesfully in the logs. Since we're both writing and reading from the same .txt file, I thought that it is appropriate to use mutexes in that part.