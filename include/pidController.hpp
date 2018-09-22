// Copyright 2018 Shivang Patel

/**
 * @file pidController.hpp
 * @author Shivang Patel
 * @version 1.0
 * 
 * @brief An implemention of PID controller class for a group assignment
 *        ENPM 808X Assignment
 * 
 **/

#pragma once

//! TODO: Include any needed lib

/**
 * A PID controller class
 */

class Pid_controller {
 public:
    /**
     * @brief A constructor which initialize default values of the variables
     * @param None
     * @return none 
     **/
    Pid_controller();

    /**
     * @brief A constructor which initialize passed values of the PID 
     *        constant variables
     * @param kp is proportionality constant
     * @param kd is derivational term constant
     * @param ki is integration term constant
     * @return none 
     **/
    Pid_controller(float kp, float kd, float ki);

    /**
     * @brief Main method which computes Cumulative OUTPUT.
     * @param target_setpoint 
     * @return none 
     **/
    void compute(float target_setpoint, float actual_velocity);

    /**
     * @brief Compute step PID for error.
     * @param target_setpoint will the value of which total value will be 
     *        calculated
     * @return PID value of the target_setpoint at that point. 
     **/
    float compute_step(float target_setpoint);

    /**
     * @brief Limits the value and prevents overshoot. 
     * @param final_value output vaule from step computation.
     * @return float value which is clipped if grater than max value.
     **/
    float clipper(float final_value);

    /**
     * @brief fetch the current state(Velocity) value. 
     * @param none
     * @return float value current state(velocity).
     **/
    float get_current_state(void);

 private:
    const float delta_time;
    const float clipper_max_value;
    float Kp;
    float Ki;
    float Kd;
    float start_state;
    float current_state;
    float total_error;
};
