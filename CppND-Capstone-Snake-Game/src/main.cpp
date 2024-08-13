#include <iostream>
#include "controller.h"
#include "game.h"
#include "renderer.h"

int main() {
  constexpr std::size_t kFramesPerSecond{60};
  constexpr std::size_t kMsPerFrame{1000 / kFramesPerSecond};
  constexpr std::size_t kScreenWidth{640};
  constexpr std::size_t kScreenHeight{640};
  constexpr std::size_t kGridWidth{32};
  constexpr std::size_t kGridHeight{32};


  std::string name;
  std::cout << "Type your name : ";
  std::cin >> name;

  auto level = Snake::Difficulty::hard;

  Renderer renderer(kScreenWidth, kScreenHeight, kGridWidth, kGridHeight);
  Controller controller;
  Game game(kGridWidth, kGridHeight, name, level);
  game.Run(controller, renderer, kMsPerFrame);
  std::cout << "Game has terminated successfully!\n";
  std::cout << "Score: " << game.GetScore() << "\n";
  std::cout << "Size: " << game.GetSize() << "\n";

  auto writeFuture = game.WriteFileAsync();
  //auto resetFuture = game.ResetScoresAsync();
  auto readFuture = game.ReadHighestScoreAsync();
  writeFuture.wait();
  //resetFuture.wait();
  readFuture.wait();


  return 0;
}