#All feature files must start with Feature keyword. There can be ONLY 1 Feature keyword per file.
# Feature describes the overall test cases.
# It can be user story name
# Google_Search_Functionality
# Google Search Functionality
@google_search
Feature: Google_Search_Functionality
# Scenario = Test Case
# Under Scenario: we will have Test Steps
# Given, And, Then, When, But, * annotations
  # These are Gherkin language
  # EACH STEP MUST START WITH A GHERKIN KEYWORD
  # Given should be used as preconditions
  # Then should be used for verifications
  # And and When should be used in the middle steps
  Background: user_is_on_the_google_page
  # Background keyword is used before each Scenario keyword
    # Background is used for repeated pre conditions.
  # It cannot be used after Scenario keyword, so use it first
    Given user is on the google page

  @iphone_search
  Scenario: TC01_iphone_search
    When user search for iPhone on google
    Then verify the result has iPhone related results
    Then capture the screenshot
    Then close the application

  @teapot_search
# We can create multiple Scenarios
  Scenario: TC02_teapot_search
    When user search for Tea Pot on google
    Then verify the result has Tea Pot related results
    Then capture the screenshot
    Then close the application

  @flower_search @wip
  Scenario: TC_03_flower_search
    When user search for flower on google
    Then verify the result has flower related
    Then capture the screenshot
    Then close the application

  @BMW_search @fast
  Scenario: TC_04_BMW_search
    When user search for BMW on google
    Then verify the result has BMW related
    Then capture the screenshot
    Then close the application

    #What is a feature file?
  #We write our test scenarios in feature files.
  #We use Gherkin language in the feature files such as Feature, Scenario, Given, And
  #Then, When, But, Back
  #It is written in plain English
  #Known as non technical part. Everybody can read and understand.

  #What is a step definition?
  #We write our Java code in the step definitions
  #This has the technical part.
  #Only technical people can understand.
  