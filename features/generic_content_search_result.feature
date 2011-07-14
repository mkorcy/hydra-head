Feature: Generic Content Search Results
  I want to see appropriate information for generic content objects in a search result

  Scenario: Viewing search results
    Given I am on the home page
    And I fill in "q" with "generic"
    When I press "submit"
    Then I should see a link to "the show document page for hydra:fixture_generic_content"

  Scenario: html5 valid - unauthenticated 
    Given I am on the home page
    And I fill in "q" with "generic"
    When I press "submit"
    Then the page should be HTML5 valid

  Scenario: html5 valid - authenticated 
    Given I am logged in as "archivist1" 
    When I am on the home page
    When I press "submit"
    Then the page should be HTML5 valid

