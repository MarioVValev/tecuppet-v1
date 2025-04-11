Feature: Check Standard page with Card block as anonymous

  Scenario: Check Standard page with Card block as anonymous
    Given I visit saved path page
    And I wait for "2" seconds
    And I click on the element with css selector "button#teal-consent-prompt-submit" if it is visible
    #Check translated Card block
    And I should see "BHT Standard Page with Card block"
#    And I should see the element with selector ".card__tag"
#    And I should see "qa_behat_dont_remove_fr"
#    And I should see "Card 33% block Heading FR"
#    And I should see "Test description for card block FR"
#    And I should see "jours"
#    And I should see "heures"
#    And I should see "min"
#    And I check if element with selector "a.card__link" has href "/fr"
