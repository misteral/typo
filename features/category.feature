Feature: Category Page
  In order to better organize the blogs
  I want to be able to create categories for them

  Background:
    Given the blog is set up
    And their exists an article "Article A"
	And their exists an article "Article B"

  Scenario: A admin can go to the categories page without error
    Given I am logged into the admin panel
    And I follow "Categories"
    # And show me the page
    Then I should not see "Couldn't find Category without an ID"
    And I should see "Save" button
    And I should see "Cancel" button

