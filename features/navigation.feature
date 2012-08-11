Feature: Navigation
  A squad of robotic rovers are to be landed by NASA on a plateau on Mars.
  This plateau, which is curiously rectangular, must be navigated by the
  rovers so that their on-board cameras can get a complete view of the
  surrounding terrain to send back to Earth.

  Scenario Outline: Navigate a rover
    Given the plateau is 5 by 5
    And the starting position is '1 2 N'
    And I move 'LMLMLMLMM'
    When I tell the rover to travel
    Then the rovers final positions should be '1 3 N' on the screen.
