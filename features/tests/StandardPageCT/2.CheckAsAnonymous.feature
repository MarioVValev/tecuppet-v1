@total-core
Feature: Check Standard page as anonymous

  Scenario: Check Standard page as anonymous
    Given I visit saved path page
    And I wait for "2" seconds
    And I click on the element "button#teal-consent-prompt-submit"
    And I wait for "5" seconds
    #Check Standard page node
    And I should see "BHT Standard Page"