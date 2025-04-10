@total-core
Feature: Add Standard Page CT

  Scenario: Add Standard Page CT
    #Login
    Given I go to "/en/user"
    And I wait for "2" seconds
    And I click on the element "button#teal-consent-prompt-submit"
    And I log in as "cuppet.contributor" "123456aaAA!!"
    #Create Standard page node
    And I go to "/en/node/add/standard_page"
    And I fill in "#edit-title-0-value" with "BHT Standard Page"
    And I select "published" from "#edit-moderation-state-0-state"
    And I click on the element "#gin-sticky-edit-submit"
    And I should see "has been created."
    And I should see "BHT Standard Page"
    And I save path for current page