function [trains_meet_time, trains1_travel_time, trains2_travel_time] = Trains(train1_speed, train2_speed, distance)
// Function of trains(train1_speed, train2_speed, distance)  takes the following parameters
// train1_speed - speed of first train
// train2_speed - speed of second train
// distance - distance between trains
// Function returns three results

trains_meet_time = distance / (train1_speed + train2_speed);
trains1_travel_time = distance / train1_speed;
trains2_travel_time = distance / train2_speed;

disp(trains_meet_time)
endfunction

