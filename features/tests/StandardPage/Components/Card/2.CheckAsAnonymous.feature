Feature: Check Standard page with Card block as anonymous

  Scenario: Check Standard page with Card block as anonymous
    Given I visit saved path page
    And I wait for "2" seconds
    And I click on the element with css selector "button#teal-consent-prompt-submit" if it is visible
    And I should see "BHT Standard Page with Card block"
#    #Check Card block
#   # And I should see the element with selector ".card__tag"
##    And I should see "qa_behat_dont_remove"
##    And I should see "Card 33% block Heading"
##    And I should see "Test description for card block"
##    And I should see "days"
##    And I should see "hours"
##    And I should see "min"
#   And I check if element with selector "a.card__link" has href "/en"
