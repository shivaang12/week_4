// Copyright 2018 Shivang Patel

/**
 * @file pidController.cpp
 * @author Shivang Patel
 * @version 1.0
 * 
 * @brief An implemention of PID controller class definition 
 *        for a group assignment ENPM 808X Assignment
 * 
 **/

#include <pidController.hpp>

//! Default Constructor
Pid_controller::Pid_controller(void) : delta_time(0.001), clipper_max_value(10),
                                       Kp(0), Ki(0), Kd(0), start_state(0),
                                       total_error(0), current_state(0) {
}

//! Constructor overloads with PID Controller constants value as parameters
Pid_controller::Pid_controller(float kp, float kd, float ki) :
                                    delta_time(0.001), clipper_max_value(10),
                                    start_state(0), total_error(0), Kp(kp),
                                    Kd(kp), Ki(ki), current_state(0) {
}

float Pid_controller::compute_step(float final_value) {
    //! TODO(SHIVANG):Compute PID CONTROLLER logic Here
    return 0;
}

void Pid_controller::compute(float final_value, float actual_velocity) {
    //! TODO:This compute method updates the state(velocity) and calls
    //  compute_step method untill the the error is below
    //  the threshold value and the actual_velocity is
    //  the same as current_state make sure to assign it
}

float Pid_controller::get_current_state(void) {
    //! TODO:Use this method to fetch value of current_state
    return 0;
}
