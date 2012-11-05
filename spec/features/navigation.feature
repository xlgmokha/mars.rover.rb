Feature: Navigation
  In order to deploy a squad of robotic rovers are to be landed by NASA on a plateau on Mars.
  As a NASA employee
  I want to find out the final coordinates.

  Scenario Outline: Navigate a rover
    Given the plateau is <x> by <y>
    And the starting position is '<starting_position>'
    And I move "<instructions>"
    When I tell the rover to travel
    Then the rovers final position should be '<result>' on the screen.

    Examples:
      | x | y | starting_position | instructions  | result |
      | 5 | 5 | 1 2 N             | LMLMLMLMM     | 1 3 N  |
      | 5 | 5 | 3 3 E             | MMRMMRMRRM    | 5 1 E  |
      | 1 | 1 | 0 0 N             | M    | 0 1 N  |
      | 1 | 1 | 0 0 E             | M    | 1 0 E  |
      | 1 | 1 | 0 0 W             | M    | 1 0 W  |
      | 1 | 1 | 0 0 S             | M    | 0 1 S  |
      | 1 | 1 | 1 0 N             | M    | 1 1 N  |
      | 1 | 1 | 1 0 E             | M    | 0 0 E  |
      | 1 | 1 | 1 0 W             | M    | 0 0 W  |
      | 1 | 1 | 1 0 S             | M    | 1 1 S  |
      | 1 | 1 | 1 1 N             | M    | 1 0 N  |
      | 1 | 1 | 1 1 E             | M    | 0 1 E  |
      | 1 | 1 | 1 1 W             | M    | 0 1 W  |
      | 1 | 1 | 1 1 S             | M    | 1 0 S  |
      | 1 | 1 | 0 1 N             | M    | 0 0 N  |
      | 1 | 1 | 0 1 E             | M    | 1 1 E  |
      | 1 | 1 | 0 1 W             | M    | 1 1 W  |
      | 1 | 1 | 0 1 S             | M    | 0 0 S  |
