#include <dirent.h>
#include <unistd.h>
#include <string>
#include <vector>

#include "linux_parser.h"

using std::stof;
using std::string;
using std::to_string;
using std::vector;

// DONE: An example of how to read data from the filesystem
string LinuxParser::OperatingSystem() {
  string line;
  string key;
  string value;
  std::ifstream filestream(kOSPath);
  if (filestream.is_open()) {
    while (std::getline(filestream, line)) {
      std::replace(line.begin(), line.end(), ' ', '_');
      std::replace(line.begin(), line.end(), '=', ' ');
      std::replace(line.begin(), line.end(), '"', ' ');
      std::istringstream linestream(line);
      while (linestream >> key >> value) {
        if (key == "PRETTY_NAME") {
          std::replace(value.begin(), value.end(), '_', ' ');
          return value;
        }
      }
    }
  }
  return value;
}

// DONE: An example of how to read data from the filesystem
string LinuxParser::Kernel() {
  string os, version, kernel;
  string line;
  std::ifstream stream(kProcDirectory + kVersionFilename);
  if (stream.is_open()) {
    std::getline(stream, line);
    std::istringstream linestream(line);
    linestream >> os >> version >> kernel;
  }
  return kernel;
}

// BONUS: Update this to use std::filesystem
vector<int> LinuxParser::Pids() {
  vector<int> pids;
  DIR* directory = opendir(kProcDirectory.c_str());
  struct dirent* file;
  while ((file = readdir(directory)) != nullptr) {
    // Is this a directory?
    if (file->d_type == DT_DIR) {
      // Is every character of the name a digit?
      string filename(file->d_name);
      if (std::all_of(filename.begin(), filename.end(), isdigit)) {
        int pid = stoi(filename);
        pids.push_back(pid);
      }
    }
  }
  closedir(directory);
  return pids;
}

// TODO: Read and return the system memory utilization
float LinuxParser::MemoryUtilization() {
  string memtotal, memfree, buffers, cached, srec, shmem;
  string key, value;
  string line;
  std::ifstream stream(kProcDirectory + kMeminfoFilename);
    if (stream.is_open()) {
      while (std::getline(stream, line)){
        std::istringstream linestream(line);
        while (linestream >> key >> value) {
          if(key == "MemTotal:"){
            memtotal = value;
          }
          else if(key == "MemFree:"){
            memfree = value;
        }
    } 
  }
}
return (std::stof(memtotal) - std::stof(memfree))/std::stof(memtotal);
}

// TODO: Read and return the system uptime
long LinuxParser::UpTime() {
  long uptime;
  string line;
  string uptimestr;
  std::ifstream stream(kProcDirectory + kUptimeFilename);
    if (stream.is_open()) {
      std::getline(stream, line);
      std::istringstream linestream(line);
      linestream >> uptimestr;
  }
  uptime = std::stol(uptimestr);
  return uptime;
}


// TODO: Read and return the number of jiffies for the system
long LinuxParser::Jiffies(){
  return LinuxParser::ActiveJiffies() + LinuxParser::IdleJiffies();
}

// TODO: Read and return the number of active jiffies for a PID
// REMOVE: [[maybe_unused]] once you define the function
long LinuxParser::ActiveJiffies(int pid) {
  long totaltime;
  string line, value;
  vector<long> values;
  std::ifstream stream(kProcDirectory + std::to_string(pid) + kStatFilename);
  if (stream.is_open()) {
    std::getline(stream, line);
    std::istringstream linestream(line);
    for (int i = 0; i <= 21; i++) {
      linestream >> value;
      if(i==13 || i==14 || i==15 || i==16 || i==21){
        values.push_back(std::stol(value));
      }
    }
  }
  for(auto& n : values){totaltime += n;}
  return totaltime / sysconf(_SC_CLK_TCK); 
  //seconds = uptime - (starttime / Hertz)
  //cpu_usage = 100 * ((totaltime / Hertz) / seconds)
  // #22 is the starttime cat /proc/<pid>/stat
}

// TODO: Read and return the number of active jiffies for the system
long LinuxParser::ActiveJiffies(){
  auto jiffies = LinuxParser::CpuUtilization();
  return stol(jiffies[CPUStates::kUser_]) + stol(jiffies[CPUStates::kNice_]) +
         stol(jiffies[CPUStates::kSystem_]) + stol(jiffies[CPUStates::kIRQ_]) +
         stol(jiffies[CPUStates::kSoftIRQ_]) +
         stol(jiffies[CPUStates::kSteal_]);
  }
// TODO: Read and return the number of idle jiffies for the system
long LinuxParser::IdleJiffies(){
  auto jiffies = LinuxParser::CpuUtilization();
  return stol(jiffies[CPUStates::kIdle_]) + stol(jiffies[CPUStates::kIOwait_]);
}

// TODO: Read and return CPU utilization
vector<string> LinuxParser::CpuUtilization(){
  string line, cpu, value;
  vector<string> jiffies;
  std::ifstream stream(kProcDirectory + kStatFilename);
  if (stream.is_open()) {
    std::getline(stream, line);
    std::istringstream linestream(line);

    linestream >> cpu;

    while (linestream >> value) {
      jiffies.push_back(value);
    }
  }
  return jiffies;
}

// TODO: Read and return the total number of processes
int LinuxParser::TotalProcesses(){
  string key, value;
  string line;
  std::ifstream stream(kProcDirectory + kStatFilename);
    if (stream.is_open()) {
      while (std::getline(stream, line)){
        std::istringstream linestream(line);
        while (linestream >> key >> value) {
          if(key == "processes"){
            return std::stoi(value);
          }
        }
      }
    }
    return 0;
}

// TODO: Read and return the number of running processes
int LinuxParser::RunningProcesses(){
  string key, value;
  string line;
  std::ifstream stream(kProcDirectory + kStatFilename);
    if (stream.is_open()) {
      while (std::getline(stream, line)){
        std::istringstream linestream(line);
        while (linestream >> key >> value) {
          if(key == "procs_running"){
            return std::stoi(value);
          }
        }
      }
    }
    return 0;  
}

// TODO: Read and return the command associated with a process
// REMOVE: [[maybe_unused]] once you define the function
string LinuxParser::Command(int pid){
  string line;
  std::ifstream stream(kProcDirectory + std::to_string(pid) + kCmdlineFilename);
  if (stream.is_open()) {
    std::getline(stream, line);
  }
  return line;
}

// TODO: Read and return the memory used by a process
// REMOVE: [[maybe_unused]] once you define the function
string LinuxParser::Ram(int pid){
  long mem;
  string key, value;
  string line;
  std::ifstream stream(kProcDirectory + std::to_string(pid) + kStatusFilename);
    if (stream.is_open()) {
      while (std::getline(stream, line)){
        std::istringstream linestream(line);
        while (linestream >> key >> value) {
          if(key == "VmSize:"){
            mem = std::stol(value)/1000;
          }
        }
      }
    }
    return std::to_string(mem);
}

// TODO: Read and return the user ID associated with a process
// REMOVE: [[maybe_unused]] once you define the function
string LinuxParser::Uid(int pid){
  long uid;
  string key, value;
  string line;
  std::ifstream stream(kProcDirectory + std::to_string(pid) + kStatusFilename);
  if (stream.is_open()) {
      while (std::getline(stream, line)){
        std::istringstream linestream(line);
        while (linestream >> key >> value) {
          if(key == "Uid:"){
            uid = std::stol(value);
          }
        }
      }
    }
    return std::to_string(uid);
}

// TODO: Read and return the user associated with a process
// REMOVE: [[maybe_unused]] once you define the function
string LinuxParser::User(int pid){
  string uid;
  string name, x, id;
  string line;
  std::ifstream stream(kPasswordPath);
  if (stream.is_open()) {
      while (std::getline(stream, line)){
        std::replace(line.begin(), line.end(), ':', ' ');
        std::istringstream linestream(line);
        while (linestream >> name >> x >> id) {
          if(id == Uid(pid)){
            uid = name;
          }
        }
      }
    }
    return uid;
}

// TODO: Read and return the uptime of a process
// REMOVE: [[maybe_unused]] once you define the function
long LinuxParser::UpTime(int pid) {
  string line;
  long uptime = 0;
  string value;
  std::ifstream filestream(kProcDirectory + "/" + std::to_string(pid) + kStatFilename);
  if (filestream.is_open()) {
    while (std::getline(filestream, line)) {
      std::istringstream linestream(line);
      for (int i = 1; i <= 22; i++) {
        linestream >> value;
        if (i == 22) {
          try {
            uptime = std::stol(value) / sysconf(_SC_CLK_TCK);
            return uptime;
          } catch (const std::invalid_argument& arg) {
            return 0;
          }
        }
      }
    }
  }
  return uptime;
}