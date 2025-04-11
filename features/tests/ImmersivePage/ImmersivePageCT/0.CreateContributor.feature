@total-core
Feature: Login as Admin and create Contributor user for for testing Immersive Page CT

  Scenario: Login as Admin and create Contributor user for testing Immersive Page CT
    #Login
    Given I go to "/user"
    And I click on the element "button#teal-consent-prompt-submit" if visible
    And I log in
    #Create Contributor user
    And I go to "/admin/people/create"
    And I fill in "#edit-mail" with "cuppet.contributor@example.com"
    And I fill in "#edit-name" with "cuppet.contributor"
    And I type "123456aaAA!!" in "#edit-pass-pass1"
    And I type "123456aaAA!!" in "#edit-pass-pass2"
    And I "select" the checkbox "#edit-roles-contributor"
    And I "select" the checkbox "#edit-field-guide-tour-completed-value"
    And I click on the element "Submit"
    And I should see "Created a new user account for"
