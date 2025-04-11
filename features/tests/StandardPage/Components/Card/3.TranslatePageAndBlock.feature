Feature: Translate the page and Card block

  Scenario: Translate the page and Card block
    #Login
    Given I am on "/user"
    And I wait for "2" seconds
    And I click on the element with css selector "button#teal-consent-prompt-submit" if it is visible
    And I log in as "bht.contributor" "123456aaAA!!"
    #And I should see "user-logged-in" in the source of the page
    Given I visit saved path page
    #Translate the node
    And I follow "Translate"
    And I click on the element with css selector "[hreflang='fr']"
    And I wait for "3" seconds
    #And I get the href of <a> with selector "[hreflang='fr']" and store it to json "frNode"
    #Then I visit the saved relative path from the JSON "frNode"
    And I fill in "edit-title-0-value" with "BHT Standard Page with Card block FR"
    And I push the "Submit" button
    And I should see "has been updated."
    #And I should see "BHT Standard Page with Card block FR"
    And I save path for current page
    #Translate block
    And I click on the element with css selector "li:nth-of-type(4)  .tw-block.tw-border-b.tw-border-transparent.tw-p-2"
#    Then I click on the element with css selector ".trigger.visually-hidden" using JS
#    And I click on the element with css selector ".contextual-links [data-dialog-type]"
#    Then I wait for text "Translate to French" to appear with max time "30" seconds
#    # Improve by creating new taxonomy term and translate it for every test not using existing ones
#    And I fill in "edit-field-heading-0-container-text" with "Card 33% block Heading FR"
#    And I write "Test description for card block FR" into "[data-drupal-selector='edit-field-description-0-value']" ckeditor5 wysiwyg
#    And I click on the element with css selector "[data-drupal-selector='edit-group-link']"
#    And I fill in "edit-field-link-0-title" with "BHT Card Link FR"
#    And I click on the element with css selector "[data-drupal-selector='edit-actions'] [data-once='drupal-ajax']"
#    Then I wait for text "has been updated." to appear with max time "30" seconds
#    Save the node
#    And I wait for "2" seconds
#    And I push the "Submit" button
