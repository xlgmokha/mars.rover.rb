Feature: Navigation
  In order to deploy a squad of robotic rovers are to be landed by NASA on a plateau on Mars.
  As a NASA employee
  I want to find out the final coordinates.

  Scenario: Navigate a rover
    Given the plateau is 5 by 5
    And the starting position is '1 2 N'
    And I move "LMLMLMLMM"
    When I tell the rover to travel
    Then the rovers final position should be '1 3 N' on the screen.
