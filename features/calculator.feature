@calculator
Feature: Calculator

  @calculator1
  Scenario: Standard Calculator validation
    Given I navigate to "https://www.calculator.com/"
    And I wait for 3 sec
    When I forcefully click on element having xpath "//div[@class='clc_topbuttons']/a[contains(text(),'Standard calculator')]"
    Then I switch to new window
    Then I click on element having xpath "//area[@href='javascript:digit(5)']"
    And I click on element having xpath "//area[@href='javascript:digit(8)']"
    Then I click on element having xpath "//area[@href='javascript:operator("*")']"
    And I click on element having xpath "//area[@href='javascript:digit(3)']"
    And I click on element having xpath "//area[@href='javascript:equals()']"
    And element having xpath "//input[@name='result']" should have attribute "value" with value "174"

  @calculator2
  Scenario: Area Calculator validation
    Given I navigate to "https://www.calculator.com/"
    When I click on element having xpath "//img[@src='/img/area.jpg']"
    Then I switch to new window
    Then I enter "65" into input field having xpath "//input[@name='untWidth']"
    And I enter "8" into input field having xpath "//input[@name='subuntWidth']"
    And I enter "40" into input field having xpath "//input[@name='untLength']"
    And I enter "1" into input field having xpath "//input[@name='subuntLength']"
    And I click on element having xpath "//input[@value='Calculate']"
    And element having xpath "//b[contains(text(),'2632 sq.feet, 20 sq.inches')]" should be present

  @calculator3
  Scenario: Temperature Calculator validation
    Given I navigate to "https://www.calculator.com/"
    When I click on element having xpath "//img[@src='/img/temp.jpg']"
    Then I switch to new window
    And I enter "30" into input field having xpath "//input[@name='valueC']"
    And I click on element having xpath "//input[@value='Calculate']"
    And element having xpath "//input[@value='86']" should be present
    Then I click on element having xpath "//input[@name='clear']"
    And I enter "0" into input field having xpath "//input[@name='valueC']"
    And I click on element having xpath "//input[@value='Calculate']"
    And I wait for 5 sec
    And element having xpath "//input[@value='32']" should be present





      