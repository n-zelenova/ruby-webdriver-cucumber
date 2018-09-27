@samplepage
Feature: Sample page steps

  @samplepage1
  Scenario: UI behavior validation
    Given I navigate to "http://skryabin.com/webdriver/html/sample.html"
    When I resize browser window size to width 767 and height 1300
    Then element having xpath "//b[@id='location']" should not be present
    When I resize browser window size to width 1300 and height 1300
    Then element having xpath "//b[@id='location']" should be present
    Then I wait for 5 sec

  @samplepage2
  Scenario: Username field validation
    Given I navigate to "http://skryabin.com/webdriver/html/sample.html"
    When I enter "a" into input field having xpath "//input[@name='username']"
    Then I click on element having xpath "//button[@id='formSubmit']"
    And element having xpath "//label[@id='username-error']" should be present
    And I wait for 3 sec
    Then I enter "a" into input field having xpath "//input[@name='username']"
    Then I click on element having xpath "//button[@id='formSubmit']"
    Then element having xpath "//label[@id='username-error']" should not be present
    And I wait for 3 sec

  @samplepage3
  Scenario: Email field validation
    Given I navigate to "http://skryabin.com/webdriver/html/sample.html"
    When I enter "natashyk89" into input field having xpath "//input[@name='email']"
    Then I click on element having xpath "//button[@id='formSubmit']"
    And element having xpath "//label[@id='email-error']" should be present
    And I wait for 3 sec
    Then I enter "@gmail.com" into input field having xpath "//input[@name='email']"
    Then I click on element having xpath "//button[@id='formSubmit']"
    Then element having xpath "//label[@id='email-error']" should not be present
    And I wait for 3 sec

  @samplepage4
  Scenario: Password validation
    Given I navigate to "http://skryabin.com/webdriver/html/sample.html"
    When I enter "" into input field having xpath "//input[@id='password']"
    Then element having xpath "//input[@id='confirmPassword']" should be present
    And I wait for 3 sec
    When I enter "12345" into input field having xpath "//input[@id='password']"
    And element having xpath "//input[@id='password']" should be present
    And I wait for 3 sec

  @samplepage5
  Scenario: Name validation
    Given I navigate to "http://skryabin.com/webdriver/html/sample.html"
    When I click on element having xpath "//input[@id='name']"
    And I enter "Nataliia" into input field having xpath "//input[@id='firstName']"
    And I enter "Nataly" into input field having xpath "//input[@id='middleName']"
    And I enter "Zelenova" into input field having xpath "//input[@id='lastName']"
    When I click on element having xpath "//span[contains(text(),'Save')]"
    Then element having xpath "//input[@id='name']" should have attribute "value" with value "Nataliia Nataly Zelenova"

  @samplepage6
  Scenario: Privacy Policy validation
    Given I navigate to "http://skryabin.com/webdriver/html/sample.html"
    When I click on element having xpath "//button[@id='formSubmit']"
    And I wait for 3 sec
    Then element having xpath "//label[@id='agreedToPrivacyPolicy-error']" should be present
    Then I check the checkbox having xpath "//input[@name='agreedToPrivacyPolicy']"
    Then element having xpath "//span[contains(text(),'I have read')]" should have partial text as "Privacy Policy"

  @samplepage7
  Scenario: Non required field validation
    Given I navigate to "http://skryabin.com/webdriver/html/sample.html"
    Then I enter "4156458787" into input field having xpath "//input[@name='phone']"
    Then I select "United States of America" option by text from dropdown having xpath "//select[@name='countryOfOrigin']"
    And element having xpath "//option[@value='USA']" should have partial text as "America"
    Then I check the checkbox having xpath "//input[@value='female']"
    And checkbox having xpath "//input[@value='female']" should be checked
    And I check the checkbox having xpath "//input[@name='allowedToContact']"
    And checkbox having xpath "//input[@name='allowedToContact']" should be checked
    Then I enter "1555 California Street, Mountain View, CA" into input field having xpath "//textarea[@id='address']"
    Then I click on element having xpath "//option[@value='BMW']"
    Then I click on element having xpath "//button[@id='thirdPartyButton']"
    And I wait for 1 sec
    And I accept alert
    Then element having xpath "//span[@id='thirdPartyResponseMessage']" should be present
    When I click on element having xpath "//input[@id='dateOfBirth']"
    And I click on element having xpath "//select[@data-handler='selectMonth']/option[2]"
    And I click on element having xpath "//select[@data-handler='selectYear']/option[@value='1990']"
    And I click on element having xpath "//td[@data-handler='selectDay']/a[text()='8']"
    Then element having xpath "//*[@id='dateOfBirth']" should have attribute "value" with value "02/08/1990"
    And I click on element having xpath "//button[@id='formSubmit']"

  @samplepage8
  Scenario: Verify Happy path for Sample Page
    Given I navigate to "http://skryabin.com/webdriver/html/sample.html"
    When I should see page title as "Sample Page"
    Then I enter "Nataliia" into input field having xpath "//input[@id='name']"
    And I enter "natashyk89" into input field having xpath "//input[@name='username']"
    And I enter "12345" into input field having xpath "//input[@id='password']"
    And I enter "example@gmail.com" into input field having xpath "//input[@name='email']"
    And I enter "12345" into input field having xpath "//input[@id='confirmPassword']"
    And I click on element having xpath "//input[@name='agreedToPrivacyPolicy']"
    And I click on element having xpath "//button[@id='formSubmit']"
    And I wait 5 seconds for element having xpath "//legend[@class='applicationResult']" to display
    Then element having xpath "//legend[@class='applicationResult']" should have partial text as "Submitted"
    And element having xpath "//b[@name='name']" should have partial text as "Nataliia"
    And element having xpath "//b[@name='email']" should have partial text as "example"
    And element having xpath "//b[contains(text(),'true')]" should have partial text as "true"
    And element having xpath "//b[@name='username']" should have partial text as "natashyk"
    And element having xpath "//b[@name='password']" should have partial text as "entered"
    And I wait for 10 sec

