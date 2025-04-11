@total-core
Feature: Check Immersive page as anonymous

  Scenario: Check Immersive page as anonymous
    Given I visit saved path page
    And I click on the element "button#teal-consent-prompt-submit" if visible
    And I should see "Cuppet Immersive Page"