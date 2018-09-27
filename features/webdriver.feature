@webdriver

  Feature: Webdriver feature

    @webdriver1
    Scenario: Open page and print
      Given I open "google" page and log details
      And I open "yahoo" page and log details
      And I go back and forward then refresh

      @webdriver2
      Scenario:  Fill out required fields
        Given I open "sample" page and log details
        When I fill out required fields
        Then I submit the form
        And I verify required fields
