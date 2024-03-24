Feature: Application Login
  Background:
    Given setup the entries in database
    When  launch the browser from config
    And hit the home page url of banking site

  @RegressionTest
  Scenario: Admin Page default login
    Given User is on NetBanking landing page
    When User login into application with "admin" and password "1234"
    Then Home Page is displayed
    And Cards are displayed

  @MobileTest
  Scenario: User Page default login
    Given User is on NetBanking landing page
    When User login into application with "user" and password "0953"
    Then Home Page is displayed
    And Cards are displayed

  @SmokeTest  @RegressionTest
  Scenario Outline: Mortgage User Page default login
    Given User is on NetBanking landing page
    When User login into application with <Username> and password <Password>
    Then Home Page is displayed
    And Cards are displayed
    Examples:
      | Username  | Password |
      | debit_user | helloRamadan11   |
      | credit_user| helloRamadan12   |

    @SmokeTest
    Scenario: User Page default Sign up
      Given User is on Practice landing page
      When User Signup into application
      | Rafi  |
      | Alam  |
      |contact@gmail.com|
      |01731776465      |
      Then Home Page is displayed
      And Cards are displayed