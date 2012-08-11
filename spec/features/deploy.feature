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

    #Examples:
      #| input_1 | input_2 | button | output |
      #| 20 | 30 | add | 50 |
      #| 2 | 5 | add | 7 |
      #| 0 | 40 | add | 40 |

#Feature: Addition
  #In order to avoid silly mistakes
  #As a math idiot
  #I want to be told the sum of two numbers

  #Scenario Outline: Add two numbers
    #Given I have entered <input_1> into the calculator
    #And I have entered <input_2> into the calculator
    #When I press <button>
    #Then the result should be <output> on the screen

    #Examples:
      #| input_1 | input_2 | button | output |
      #| 20 | 30 | add | 50 |
      #| 2 | 5 | add | 7 |
      #| 0 | 40 | add | 40 |
