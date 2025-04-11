Feature: Login as Admin and delete the Contributor user used for testing Card block

  Scenario: Login as Admin and delete the Contributor user used for testing Card block
     # Login
    Given I am on "en/user"
    And I wait for "2" seconds
    And I click on the element with css selector "button#teal-consent-prompt-submit" if it is visible
    And I log in
    And I wait for AJAX loading to finish
    # Delete contributor user
    Given I am on "en/admin/people/"
    And I follow "bht.contributor"
    And I go to current page plus "/cancel"
    And I wait for "5" seconds
    #And I click "edit-user-cancel-method-user-cancel-delete" - for future use if the following step fails:
    And I click on the text "Delete the account and its content. This action cannot be undone."
    And I push the "Submit" button
    And I wait for text "has been deleted." to appear with max time "30" seconds
    And I end the session
