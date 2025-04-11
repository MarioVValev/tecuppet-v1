@total-core
Feature: Add Standard Page CT

  Scenario: Add Standard Page CT
    #Login
    Given I go to "/user"
    And I click on the element "button#teal-consent-prompt-submit" if visible
    And I log in as "cuppet.contributor" "123456aaAA!!"
    #Create Standard page node
    And I go to "/node/add/standard_page"
    And I fill in "#edit-title-0-value" with "Cuppet Standard Page"
    And I select "published" from "#edit-moderation-state-0-state"
    #Save the node
    And I click on the element "#gin-sticky-edit-submit"
    And I should see "has been created."
    And I should see "Cuppet Standard Page"
    And I save path for current page