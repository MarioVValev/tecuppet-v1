@total-core
Feature: Login as Admin and delete the Contributor user used for testing Standard Page CT

  Scenario: Login as Admin and delete the Contributor user used for testing Standard Page CT
    # Login
    Given I go to "/en/user"
    And I wait for "2" seconds
    And I click on the element "button#teal-consent-prompt-submit"
    And I log in
    And I wait for AJAX loading to finish
    # Delete contributor user
    Given I go to "/en/admin/people/"
    And I follow "cuppet.contributor"
    And I go to current page plus "/cancel"
    And I wait for "5" seconds
    And I click on the text "Delete the account and its content. This action cannot be undone."
    And I click on the element "Submit"
    And I wait for the text "has been deleted." to appear within "30" seconds