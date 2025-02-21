# Solution to Problem 1: Optimizing Aluminum Bar Cutting

## Approach
The problem is modeled using **constraint programming** in MiniZinc. The goal is to assign each measurement to a bar such that:
1. The total length of measurements assigned to a bar does not exceed `BAR_LENGTH`.
2. The number of bars used is minimized.

### Key Components
- **Decision Variables**:
  - `bar_assignment`: Assigns each measurement to a bar.
  - `total_bars`: Represents the total number of bars used.
- **Constraints**:
  - The sum of measurements assigned to a bar must not exceed `BAR_LENGTH`.
- **Objective**:
  - Minimize `total_bars`.

## Results

### Input
- **BAR_LENGTH**: `597 cm`
- **measurements**: `[100, 100, 100, 100, 100, 100, 100, 297, 297, 297, 200, 200, 200]`

### Output
- **bar_assignment**: `[4, 4, 4, 3, 3, 3, 2, 1, 4, 3, 2, 2, 1, 1]`
- **total_bars**: `4`

### Interpretation
- **Bar 1**: Measurements `[297, 200, 100]` (Total: `597 cm`)
- **Bar 2**: Measurements `[100, 200, 200]` (Total: `500 cm`)
- **Bar 3**: Measurements `[100, 100, 297]` (Total: `497 cm`)
- **Bar 4**: Measurements `[100, 100, 100, 297]` (Total: `597 cm`)

The minimum number of bars required is **4**.
