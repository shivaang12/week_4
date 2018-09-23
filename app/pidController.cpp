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
    : delta_time_(0.001),
      clipper_max_value_(10),
      Kp_(kp),
      Ki_(kp),
      Kd_(ki),
      current_state_(0),
      total_error_(0) {
}

float Pid_controller::compute_step(float final_value) {
  /**
   * TODO:Compute PID CONTROLLER logic Here
   *
   * Calculate error by Final_value - current_state
   *  error = Final_value - current_state
   *
   * use the obtain error in order to calculate P, I, D values
   * use p_error var for storing previous error value of D term
   *  p_term = error * Kp
   *
   *  total_error += error
   *
   * use total error var for I term update it in every call
   * e.g. total_error += error
   *  i_term = total_error * Ki * delta_time
   *
   *  d_term = (error - p_error) * (Kd / delta_time)
   *
   *
   * Compute total value by adding P, I, D and pass through clipper method
   * so to prevent overshoot by pre setting overshoot
   *
   *  output_value = p_term + i_term + d_term
   *
   * return clipper_max_value(output_value)
   *
   */
  if (final_value < 0) {
    throw std::invalid_argument("Input cannot be negative");
  }

  auto error = final_value - current_state_;
  total_error_ = total_error_ * error * delta_time_;
  auto derivative = (error - p_error_) / delta_time_;
  current_state_ = error * Kp_ + total_error_ * Ki_ + derivative * Kd_;
  p_error_ = error;

  return current_state_;
}

void Pid_controller::compute(float final_value, float actual_velocity) {
  /**
   * TODO
   * Assign actual_velocity to current_state
   *
   * Start with inizialing count variable to 0.
   * Add while loop with condition of abs(error) > 0.0001 or count < 10000
   *      inside loop:
   *      call compute_step method
   *          output_value = compute_step(final_value)
   *      Add this to current_state
   *          current_state += ouput_value
   *      increment the counter
   *          ++counter
   *
   */
  if (final_value < 0 || actual_velocity < 0) {
    throw std::invalid_argument("Input cannot be negative");
  }

  current_state_ = actual_velocity;
  int count = 0;
  while (count < 1000) {
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
