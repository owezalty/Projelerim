#Homework Due Saturday
@user_creation
Feature: creation of user feature
  Scenario Outline: login_with_employee_credentials
    Given user is on the login page
    And user clicks on login dropdown
    And user clicks on sign in button
    And user sends username "<username>"
    And user sends password "<password>"
    And user clicks on the login button
    And verify the login is successful

    Examples: credentials
      |username   |password|
      |CWoburn    |Cw192837?  |

    Scenario Outline: creating new user account with different profiles
      Given navigates to Administration
      And navigates to'Create or Edit user page'
      And user enters login as "<login>"
      And user enters firstname as "<firstName>" and lastname as "<lastName>"
      And user enters email address as "<email>"
      And user clicks on language dropdown and select language
      And user clicks on profiles and select profile
      Then user clicks on save button
      Then verify new user creation is successful
      Then close the application


      Examples: credentials
      |login     |     email | firstName| lastName|
      | mrt1122  | ab@yav.com | Oguzmurat | Alti    |