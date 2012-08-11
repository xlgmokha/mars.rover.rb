Feature: Deployment
  In order to deploy a rover to mars
  As a deployment guy
  I want to be able to told the final coordinates

  Scenario Outline: Deploy a rover
    Given the terrain is 5 by 5
    And the starting position is '1 2 N'
    And I move 'LMLMLMLMM'
    When I press play
    Then the result should be '1 3 N' on the screen.
