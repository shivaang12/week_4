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

//! Default Constructor
Pid_controller::Pid_controller(void) : delta_time_(0.001), clipper_max_value_(10),
                                       Kp_(0), Ki_(0), Kd_(0),
                                       current_state_(0), total_error_(0),
                                       p_error_(0) {
}

//! Constructor overloads with PID Controller constants value as parameters
Pid_controller::Pid_controller(float kp, float kd, float ki) :
                                            delta_time_(0.1),
                                            clipper_max_value_(10),
                                            Kp_(kp), Ki_(ki), Kd_(kd),
                                            current_state_(0), total_error_(0) {
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

    return 0;
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
}

float Pid_controller::clipper(float final_value) {
    /**
     * TODO:
     * Return final_value if final_value < clipper_max_value
     * else return clipper_max_value
     */

    return 0;
}

float Pid_controller::get_current_state(void) {
    //! TODO:Use this method to fetch (getter method) value of current_state
    return 0;
}
