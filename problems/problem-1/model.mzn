% MiniZinc Model for Aluminum Bar Cutting Problem

% Fixed length of each aluminum bar
int: BAR_LENGTH;

% List of measurements
array[int] of int: measurements;


% Number of measurements
int: n = length(measurements);

% Decision variable: Assign each measurement to a bar
array[1..n] of var 1..n: bar_assignment;

% Decision variable: Total number of bars used
var 1..n: total_bars = max(bar_assignment);

% Constraint: The sum of measurements assigned to a bar must not exceed BAR_LENGTH
constraint forall(b in 1..total_bars) (
    sum([measurements[i] | i in 1..n where bar_assignment[i] == b]) <= BAR_LENGTH
);

% Objective: Minimize the number of bars used
solve minimize total_bars;

% Output the results
output ["bar_assignment = \(bar_assignment)\n", "total_bars = \(total_bars)\n"];