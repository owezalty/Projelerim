@read_feature
Feature: database features

  Scenario: TC01_read_customer_information
    Given user connects to the database
    And user gets the "*" from "tp_customer" table
      #SELECT * FROM TP_CUSTOMER; Select all column from tp_customer table
    And user reads all of the "ssn" columns data
