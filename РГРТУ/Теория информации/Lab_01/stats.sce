function [average, rms ] = stat(vector) 
// Function stat(vector) takes a vector and returns two values for each average and rms

n = length(vector);
average = sum(vector)/n;
rms = sqrt(sum((vector - average) .^ 2 / n));
endfunction



function[average, rms ] = stat_v2(vector)
// Function stat_v2(vector) takes a vector and returns two values for each average and rms
n = length(vector);
average = sum(vector)/n;
rms = sqrt(sum((vector .^ 2 )/ n));
endfunction