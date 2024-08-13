#ifndef SNAKE_H
#define SNAKE_H

#include <vector>
#include <iostream>
#include <memory>
#include "SDL.h"

class Snake {
 public:
  enum class Direction { kUp, kDown, kLeft, kRight };
  enum class Difficulty { easy, medium, hard };


  Snake(int grid_width, int grid_height, Difficulty diff)
      : grid_width(grid_width),
        grid_height(grid_height),
        head_x(grid_width / 2),
        head_y(grid_height / 2),
        _diff(diff) {setInitialSpeed(_diff);}

  void Update();

  void GrowBody();
  bool SnakeCell(int x, int y);

  Direction direction = Direction::kUp;

  float speed; 
  int size{1};
  bool alive{true};
  float head_x;
  float head_y;
  std::vector<SDL_Point> body;

 private:
  void UpdateHead();
  void UpdateBody(SDL_Point &current_cell, SDL_Point &prev_cell);
  void setInitialSpeed(Difficulty &diff);

  bool growing{false};
  int grid_width;
  int grid_height;

  Difficulty _diff;
};

#endif