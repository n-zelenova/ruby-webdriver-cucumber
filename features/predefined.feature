@predefined
Feature: Predefined steps

  @predefined1
  Scenario: Cucumber embedded steps for Google
    Given I navigate to "https://google.com"
    Then I should see page title as "Google"
    When I enter "Behavior Driven Development framework" into input field having xpath "//input[@name='q']"
    And I wait for 1 sec
    And I click on element having xpath "//*[@value='Google Search']"
    And I wait 5 seconds for element having xpath "//*[@id='ires']" to display
    Then element having xpath "//*[@id='ires']" should have partial text as "Cucumber"

  @predefined2
  Scenario: Steps for Bing
    Given I navigate to "https://www.bing.com/"
    Then I should see page title as "Bing"
    When I enter "Behavior Driven Development framework" into input field having xpath "//input[@id='sb_form_q']"
    And I click on element having xpath "//input[@id='sb_form_go']"
    And I wait 5 seconds for element having xpath "//ol[@id='b_results']" to display
    Then element having xpath "//ol[@id='b_results']" should have partial text as "Cucumber"

  @predefined3
  Scenario: Steps for Yahoo
    Given I navigate to "https://www.yahoo.com/"
    Then I should see page title as "Yahoo"
    When I enter "Behavior Driven Development framework" into input field having xpath "//input[@id='uh-search-box']"
    And I click on element having xpath "//button[@id='uh-search-button']"
    And I wait 5 seconds for element having xpath "//div[@class='compText']" to display
    Then element having xpath "//p[@class='lh-16']" should have partial text as "Cucumber"

  @predefined4
  Scenario: Steps for Yandex
    Given I navigate to "https://yandex.com/"
    Then I should see page title as "Yandex"
    When I enter "Behavior Driven Development framework" into input field having xpath "//button[@type='submit']"
    And I click on element having xpath "//button[@type='submit']"
    And I wait 5 seconds for element having xpath "//div[@class='organic__url-text']" to display
    Then element having xpath "//div[@class='text-container typo typo_text_m typo_line_m organic__text']" should have partial text as "Behavior"

  @predefined5
  Scenario: Verify Happy path for Sample Page
    Given I navigate to "http://skryabin.com/webdriver/html/sample.html"
    Then I should see page title as "Sample Page"
    When I enter "Nataliia" into input field having xpath "//input[@id='name']"
    And I enter "natashyk89" into input field having xpath "//input[@name='username']"
    And I enter "12345" into input field having xpath "//input[@id='password']"
    And I enter "example@gmail.com" into input field having xpath "//input[@name='email']"
    And I enter "12345" into input field having xpath "//input[@id='confirmPassword']"
    And I click on element having xpath "//input[@name='agreedToPrivacyPolicy']"
    And I click on element having xpath "//button[@id='formSubmit']"
    And I wait 5 seconds for element having xpath "//legend[@class='applicationResult']" to display
    Then element having xpath "//legend[@class='applicationResult']" should have partial text as "Submitted"

  @predefined6
  Scenario: Steps for Google maps
    Given I navigate to "https://www.google.com/"
    Then I should see page title as "Google"
    When I enter "Google maps" into input field having xpath "//input[@name='q']"
    And I wait for 1 sec
    And I click on element having xpath "//*[@value='Google Search']"
    And I wait 5 seconds for element having xpath "//*[@id='ires']" to display
    And I click on element having xpath "//a[@href='https://maps.google.com/']"
    And I enter "1776 California Street, Mountain View, CA" into input field having xpath "//input[@id='searchboxinput']"
    And I click on element having xpath "//button[@id='searchbox-searchbutton']"
    And I wait 5 seconds for element having xpath "//h1[@class='section-hero-header-title']" to display
    Then element having xpath "//h1[@class='section-hero-header-title']" should have partial text as "California"

  @predefined7
  Scenario: Steps for Amazon
    Given I navigate to "https://www.amazon.com/"
    Then I should see page title as "Amazon.com: Online Shopping for Electronics, Apparel, Computers, Books, DVDs & more"
    When I enter "rower" into input field having xpath "//input[@id='twotabsearchtextbox']"
    And I click on element having xpath "//input[@value='Go']"
    And I click on element having xpath "//select[@id='sort']"
    And I click on element having xpath "//option[@value='review-rank']"
    And I wait 5 seconds for element having xpath "//img[@class='s-access-image cfMarker']" to display
    And I click on element having xpath "//img[@class='s-access-image cfMarker']"

  @predefined8
  Scenario: Test
    Given I navigate to "http://skryabin.com/webdriver/html/sample.html"
    Then I should see page title as "Sample Page"
    And I check the checkbox having xpath "//input[@name='agreedToPrivacyPolicy']"
    And checkbox having xpath "//input[@name='agreedToPrivacyPolicy']" should be checked
    And I check the checkbox having xpath "//input[@name='allowedToContact']"
    And checkbox having xpath "//input[@name='allowedToContact']" should be checked
    And I check the checkbox having xpath "//input[@value='female']"
    And checkbox having xpath "//input[@value='female']" should be checked
    Then I select "Ukraine" option by value from dropdown having xpath "//select[@name='countryOfOrigin']"
    Then element having xpath "//option[@value='Ukraine']" should have partial text as "Ukraine"
    And I wait for 5 sec





   



















          