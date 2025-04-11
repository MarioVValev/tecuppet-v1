@javascript
Feature: Add Card block

  Scenario: Add Card block
    #Login
    Given I am on "/user"
    And I wait for "2" seconds
    And I click on the element with css selector "button#teal-consent-prompt-submit" if it is visible
    And I log in as "bht.contributor" "123456aaAA!!"
    #Create Standard page node
    And I go to "/node/add/standard_page"
    And I fill in "edit-title-0-value" with "BHT Standard Page with Card block"
    And I push the "Submit" button
    And I should see "has been created."
    And I should see "BHT Standard Page with Card block"
    And I save path for current page
    #Add Card block
    And I follow "Layout"
    And I wait for '2' seconds
    And I scroll element with id "section" to the top
    And I wait for "3" seconds
    And I click on the element with css selector "[data-layout-builder-highlight-id='block-0-content'] [data-dialog-type]"
    And I wait for "3" seconds
    And I click on the element with css selector "#card"
    And I wait for AJAX loading to finish
    ## Improve by creating new taxonomy term and translate it for every test not using existing one
    #And I click on the element with css selector "[data-drupal-selector='edit-settings-block-form-field-tags-actions-ief-add-existing']"
    And I wait for "2" seconds
    And I fill in "settings[block_form][field_heading][0][container][text]" with random string
    ## Improve by creating new taxonomy term and translate it for every test not using existing one
#    And I click on the element with css selector "[data-drupal-selector='edit-settings-block-form-field-tags-form-0-actions-ief-reference-save']"
#    And I wait for "2" seconds
    And I click on the element with css selector "[data-drupal-selector='edit-settings-block-form-field-image-entity-browser-entity-browser-open-modal']"
    And I wait for AJAX loading to finish
    Then I switch to iframe "entity_browser_iframe_wedia_entity_browser_modal"
    And I follow "Choose existing media"
    Then I fill in "edit-name" with "default_image" from yml
    Then I click on the element with css selector "[id^=\'edit-submit-media-entity-browser\']" using JS
    And I wait for AJAX loading to finish
    And I should see the element with selector ".views-row"
    And I click on the element with css selector ".views-row" using JS
    And I click on the element with css selector "[value='Select image']"
    And I wait for text "You can select up to 1 media items (0 left)." to appear with max time "30" seconds
    #nd I fill in "settings[block_form][field_tags][form][0][entity_id]" with random string
    #And I fill in Drupal 8 field "edit-settings-block-form-field-heading-0-container-text" with "Card 33% block Heading"
    #And I write "Test description for card block" into "[data-drupal-selector='edit-settings-block-form-field-description-0-value']" ckeditor5 wysiwyg
#    And I press "Countdown"
#    And I fill in Drupal 8 field "edit-settings-block-form-field-countdown-0-value-date" with "02172025"
   # And I fill in Drupal 8 field "edit-settings-block-form-field-countdown-0-value-time" with "100000AM"
    And I wait for "2" seconds
    And I scroll element with id "edit-actions" to the top
    #And I press the "edit-actions-submit" button
#    And I fill in Drupal 8 field "edit-settings-block-form-field-link-0-uri" with "<front>"
#    And I fill in Drupal 8 field "edit-settings-block-form-field-link-0-title" with "BHT Card Link"
    And I click on the element with css selector "[data-drupal-selector='edit-actions-submit']"
    Then I wait for text "You are editing the layout for this Standard page content item." to appear with max time "30" seconds
    #And I fill in "settings[block_form][field_tags][form][0][entity_id]" with "testing"
    And I wait for "2" seconds
    #Save the node
    And I select "published" from "edit-moderation-state-0-state"
    And I press the "edit-submit" button
