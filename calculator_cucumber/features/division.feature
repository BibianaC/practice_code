Feature: Dividing 

Scenario Outline: Divide two numbers
    Given the input "<input>"
    When the calculator is run
    Then the output should be "<output>"

    Examples:
      |  input | output | 
      |  10/2  |   5    | 
      |  100/4 |   25   |