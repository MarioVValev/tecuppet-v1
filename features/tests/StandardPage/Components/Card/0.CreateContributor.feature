Feature: Login as Admin and create Contributor user for for testing Standard Page CT

  Scenario: Login as Admin and create Contributor user for testing Standard Page CT
 #Login
    Given I am on "en/user"
    And I wait for "2" seconds
    And I click on the element with css selector "button#teal-consent-prompt-submit" if it is visible
    And I click on the element with css selector "[aria-label='Close dialog']" if it is visible
    And I log in
    #Create Contributor user
    And I wait for AJAX loading to finish
    Then I am on "en/admin/people/create"
    And I fill in "edit-mail" with "bht.contributor@example.com"
    And I fill in "edit-name" with "bht.contributor"
    And I fill in "edit-pass-pass1" with "123456aaAA!!"
    And I fill in "edit-pass-pass2" with "123456aaAA!!"
    And I check the box "edit-roles-contributor"
    And I check the box "edit-field-guide-tour-completed-value"
    And I push the "Submit" button
    And I should see "Created a new user account for"

