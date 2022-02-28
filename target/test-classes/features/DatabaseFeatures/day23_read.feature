
@read_feature
Feature: database features

  @db_customer_ssn
  Scenario: TC01_read_customer_information_ssn
    Given user connects to the database
    And user gets the "*" from "tp_customer" table
#    Select * from tp_customer; Select all column from tp_customer table
    And user reads all of the "ssn" columns data
    Then close the database connection

  @db_customer_address
  Scenario: TC02_read_customer_information_address
    Given user connects to the database
    And user gets the "*" from "tp_customer" table
    #Select * from tp_customer; Select all column from tp_customer table
    And user reads all of the "address" columns data
    Then close the database connection

  @db_customer_email
   Scenario: TC03_read_customer_information_email
    Given user connects to the database
    And user gets the "*" from "tp_customer" table
#Select * from tp_customer; Select all column from tp_customer table
    And user reads all of the "email" columns data
    Then close the database connection

 @db_user_email
  Scenario: TC04_read_user_information_email
   Given user connects to the database
   And user gets the "*" from "jhi_user" table
#    Select * from tp_customer; Select all column from tp_customer table
   And user reads all of the "email" columns data
   Then close the database connection

  @db_user_login
 Scenario: TC05_read_user_information_login
   Given user connects to the database
   And user gets the "*" from "jhi_user" table
#    Select * from tp_customer; Select all column from tp_customer table
    #And user reads all of the "login" columns data
    And verify "jhi_user" table "login" columns contains "sherlockholmes" data
    Then close the database connection

    #Test if user list has foreachloop2020@gmail.com as a valid email
  @db_user_email1
    Scenario: TC06_read_user_information_email1
    Given user connects to the database
    And user gets the "*" from "jhi_user" table
    And verify the row count
    #Select * from tp_customer; Select all column from tp_customer table
    #And user reads all of the "login" columns data
    And verify "jhi_user" table "email" columns contains "foreachloop2020@gmail.com" data
    Then close the database connection


  @db_account_type
  Scenario: TC07_read_account_information_type
    Given user connects to the database
    And user gets the "*" from "tp_account" table
    And verify the row count
#    Select * from tp_customer; Select all column from tp_customer table
    #And user reads all of the "account_type" columns data
    And verify "tp_account" table "account_type" columns contains "CHECKING" data
    And verify "tp_account" table "account_type" columns contains "SAVING" data
    And verify "tp_account" table "account_type" columns contains "INVESTING" data
    And verify "tp_account" table "account_type" columns contains "CREDIT_CARD" data
    Then close the database connection

  @db_account_registration
  Scenario: TC08_read_account_information_type
    Given user connects to the database
    And user gets the "*" from "tpaccount_registration" table
    And verify the row count
    And verify the column names of "tpaccount_registration" table
    Then close the database connection

  @db_customer1
  Scenario: TC09_read_customer
    Given user connects to the database
    And user gets the "*" from "tp_customer" table
    And verify the row count
    And verify the column names of "tp_customer" table
    Then close the database connection