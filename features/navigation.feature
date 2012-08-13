Feature: Navigation
  In order to deploy a squad of robotic rovers are to be landed by NASA on a plateau on Mars.
  As a NASA employee
  I want to find out the final coordinates.

  Scenario Outline: Navigate a rover
    Given the plateau is <start_x> by <start_y>
    And the starting position is '<starting_position>'
    And I move "<instructions>"
    When I tell the rover to travel
    Then the rovers final position should be '<result>' on the screen.

    Examples:
      | start_x | start_y | starting_position | instructions  | result |
      | 5       | 5       | 1 2 N             | LMLMLMLMM     | 1 3 N  |
