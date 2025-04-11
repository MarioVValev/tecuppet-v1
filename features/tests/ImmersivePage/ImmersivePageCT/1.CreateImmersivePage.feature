@total-core
Feature: Add Immersive Page CT

  Scenario: Add Immersive Page CT
    #Login
    Given I go to "/user"
    And I click on the element "button#teal-consent-prompt-submit" if visible
    And I log in as "cuppet.contributor" "123456aaAA!!"
    #Create Immersive page node
    And I go to "/node/add/immersive_page"
    And I fill in "#edit-title-0-value" with "Cuppet Immersive Page"
    And I select "published" from "#edit-moderation-state-0-state"
    #Save the node
    And I click on the element "#gin-sticky-edit-submit"
    And I should see "has been created."
    And I should see "Cuppet Immersive Page"
    And I save path for current page
