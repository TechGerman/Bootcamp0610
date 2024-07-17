#Session 16
  #Author: German Tereshchenko
  #Manual test cases are in the Test Set Jira Ticket
  #Manual test set is in JUN-11

Feature: Medicenter US#4

  Scenario: Administrator is able to make changes in specialist data (first name, last name, medical speciality)
    # Login as an admin
    Given I open url "https://medicenter-qa2.vercel.app/"
    Then I should see page title as "Medicenter"
    Then element with xpath "//h1[contains(text(),'Medical Center')]" should be present
    Then I click on element using JavaScript with xpath "(//button[contains(text(),'Login')])"
    When I type "administrator2@gmail.com" into element with xpath "//input[@id='email']"
    When I type "abc123" into element with xpath "//input[@id='password']"
    Then I click on element using JavaScript with xpath "//button[contains(text(),'Sign in')]"
    Then I wait for element with xpath "//h1[contains(text(),'Calvin Grant')]" to be present
    Then I wait for element with xpath "//td[contains(text(),'David Beckham')]/ancestor::tr/td[3]/div/span[1]/span" to be present
    #Edit specialist first name
    Then I click on element using JavaScript with xpath "//td[contains(text(),'David Beckham')]/ancestor::tr/td[3]/div/span[1]/span"
    Then I wait for element with xpath "//input[@id='first_name']" to be present
    Then I clear element with xpath "//input[@id='first_name']"
    Then I type "Dave" into element with xpath "//input[@id='first_name']"
    #Edit specialist last name
    Then I clear element with xpath "//input[@id='last_name']"
    Then I type "Beck" into element with xpath "//input[@id='last_name']"
    #Edit medical speciality
    Then I click on element with xpath "//option[@value='neurologist']"
    #Edit working days and hours
    Then I click on element using JavaScript with xpath "//button[@id='tuesday']"
    Then I clear element with xpath "//input[@id='working_hours.tuesday.from']"
    Then I wait for 2 sec
    Then I clear element with xpath "//input[@id='working_hours.tuesday.to']"
    Then I wait for 2 sec
    Then I click on element using JavaScript with xpath "//button[@id='monday']"
    Then I click on element with xpath "//input[@id='working_hours.monday.from']"
    Then I type "0900" into element with xpath "//input[@id='working_hours.monday.from']"
    Then I click on element with xpath "//input[@id='working_hours.monday.to']"
    Then I type "1200" into element with xpath "//input[@id='working_hours.monday.to']"
    Then I wait for 1 sec
    Then I click on element using JavaScript with xpath "//button[contains(text(),'Save')]"
    Then I wait for 1 sec
    Then I refresh the page
    Then I wait for element with xpath "//td[contains(text(),'Dave Beck')]/ancestor::tr/td[2]/span[contains(text(),'Neurologist')]" to be present




