// Copyright 2018 Shivang Patel and Royneel Rayess

/**
 * @file pidController.cpp
 * @author Shivang Patel, Royneel Rayess
 * @version 1.0
 * 
 * @brief An implemention of PID controller class definition 
 *        for a group assignment ENPM 808X Assignment
 * 
 */

#include <pidController.hpp>
#include <stdexcept>

//! Default Constructor
Pid_controller::Pid_controller(void)
    : delta_time_(0.001),
      clipper_max_value_(10),
      Kp_(0),
      Ki_(0),
      Kd_(0),
      current_state_(0),
      total_error_(0),
      p_error_(0) {
}

//! Constructor overloads with PID Controller constants value as parameters
Pid_controller::Pid_controller(float kp, float kd, float ki)
    : delta_time_(0.1),
      clipper_max_value_(10),
      Kp_(kp),
      Ki_(ki),
      Kd_(kd),
      current_state_(0),
      total_error_(0),
      p_error_(0) {
}

float Pid_controller::compute_step(float final_value) {
  if (final_value < 0) {
    throw std::invalid_argument("Input cannot be negative");
  }

  auto error = final_value - current_state_;
  total_error_ = total_error_ + error * delta_time_;
  auto derivative = (error - p_error_) / delta_time_;
  current_state_ = error * Kp_ + total_error_ * Ki_ + derivative * Kd_;
  p_error_ = error;

  return current_state_;
}

void Pid_controller::compute(float final_value, float actual_velocity) {
  if (final_value < 0 || actual_velocity < 0) {
    throw std::invalid_argument("Input cannot be negative");
  }

  current_state_ = actual_velocity;
  int count = 0;
  while (count < 10000 || abs(p_error_) > 0.0001) {
    current_state_ = compute_step(final_value);
    ++count;
  }
}

float Pid_controller::clipper(float final_value) {
  return final_value > clipper_max_value_ ? clipper_max_value_ : final_value;
}

float Pid_controller::get_current_state(void) {

  return current_state_;
}
