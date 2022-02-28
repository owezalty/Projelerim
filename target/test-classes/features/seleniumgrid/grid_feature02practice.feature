@grid_feature02
Feature: grid_feature
  @chrome_scenario02
  Scenario: TC_01_Testing_On_Chrome
    Given user is on the application url with chrome
    Then verify the title of page is GMIBANK
    Then close remote driver

