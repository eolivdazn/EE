# Created by TESTE at 11/01/2017

Feature: Validate snippet feature

  Scenario: Create a new snippet
    Given Im on gruyere portal "sign in" page
    And  I insert "regular" User name and Password
    When I create a new snippet
    Then A new snippet is available
    Then I delete the snippet
