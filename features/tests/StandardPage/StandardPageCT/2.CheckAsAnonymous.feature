@total-core
Feature: Check Standard page as anonymous

  Scenario: Check Standard page as anonymous
    Given I visit saved path page
    And I click on the element "button#teal-consent-prompt-submit" if visible
    #Check Standard page node
    And I should see "Cuppet Standard Page"