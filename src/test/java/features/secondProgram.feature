Feature: Application Login
  Background:
    When  launch the browser from config
    And hit the home page url of banking site

  @RegressionTest @NetBanking
  Scenario: User Page default login
    Given User is on NetBanking landing page
    When User login into application with "user" and password "0953"
    Then Home Page is displayed
    And Cards are displayed

  @SmokeTest  @RegressionTest @Mortgage
  Scenario Outline: Mortgage User Page default login
    Given User is on NetBanking landing page
    When User login into application with <Username> and password <Password>
    Then Home Page is displayed
    And Cards are displayed
    Examples:
      | Username  | Password |
      | debit_user | helloRamadan11   |
      | credit_user| helloRamadan12   |