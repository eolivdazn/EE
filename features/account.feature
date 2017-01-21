
Feature:  Account


  Scenario: Sign up for a new account
    Given Im on gruyere portal "sign up" page
    When  I insert "random" User name and Password
    Then  A message "Account created." is displayed

  Scenario: Sign up with existing user
    Given Im on gruyere portal "sign up" page
    When  I insert "regular" User name and Password
    Then  A message "User already exists." is displayed


  Scenario: Sign in with regular user and logout
    Given Im on gruyere portal "sign in" page
    When  I insert "regular" User name and Password
    Then  I logout the session


