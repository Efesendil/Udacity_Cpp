#ifndef GAME_H
#define GAME_H

#include <random>
#include "SDL.h"
#include "controller.h"
#include "renderer.h"
#include "snake.h"
#include <fstream>
#include <memory>
#include <vector>
#include <algorithm>
#include <future>
#include <condition_variable>
#include <mutex>
#include <string>

class Game {
 public:
  Game(std::size_t grid_width, std::size_t grid_height, std::string name, Snake::Difficulty &level);
  //destructor

  ~Game();

  void Run(Controller const &controller, Renderer &renderer,
           std::size_t target_frame_duration);
  int GetScore() const;
  int GetSize() const;
  std::string GetName() const;

/*
Resource - safe implementation of file manipulating methods that share the same resource
In order to avoid data races, threads launched asynchronusly
*/
  std::future<void> WriteFileAsync() const {
        std::this_thread::sleep_for(std::chrono::milliseconds(10));
        return std::async(std::launch::async, &Game::WriteFile, this);
    }

  std::future<void> ResetScoresAsync() {
        std::this_thread::sleep_for(std::chrono::milliseconds(10));
        return std::async(std::launch::async, &Game::ResetScores, this);
    }

  std::future<void> ReadHighestScoreAsync() {
        std::this_thread::sleep_for(std::chrono::milliseconds(10));
        return std::async(std::launch::async, &Game::ReadHighestScore, this);
    }
  

 private:
  Snake snake;
  SDL_Point food;

  std::random_device dev;
  std::mt19937 engine;
  std::uniform_int_distribution<int> random_w;
  std::uniform_int_distribution<int> random_h;

  void WriteFile() const; //in order to save attempts and scores into a file
  void ResetScores(); //in order to empty the file 
  void ReadHighestScore(); //in order to read the highest score in the file

  /*
  mutex used to protect the ressource from accesed within a different method
  condition variable used to notify other methods when a task execution is finished
  */
  mutable std::mutex fileMutex;
  mutable std::condition_variable condition;
  mutable bool file_exists{false};

  int score{0};
  Snake::Difficulty _level;
  std::unique_ptr<std::string> _name;
  

  void PlaceFood();
  void Update();
};

#endif