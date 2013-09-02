Feature: Merge Blog
  In order to better organize the blogs
  I want to combine similar blogs

  Background:
    Given the blog is set up
    And their exists an article "Article A"
	And their exists an article "Article B"

  Scenario: A admin can merge two articles
    Given I am admin
    And I am on the content page
    #And show me the page
    #Given I am logged into the admin panel
    And I open the "Article A" edit page
	Then I should see "Merge Articles"

  Scenario: A non-admin cannot merge two articles
    Given I am not admin
    And I am on the "Article A" edit page
	Then I should not see "Merge Articles"

  Scenario: When articles are merged, the merged article should contain the text of both previous articles
    Given I am admin
    And I am on the "Article A" edit page
	And I should see "Merge Articles"
	And I fill in "merge_with" with "Article B"'s Article ID
    Then I should see the text of "Article A"
    And I should see the text of "Article B"

	
  Scenario: When articles are merged, the merged article should contain an author of the previous articles
	Given I am admin
	And I have merged "Article A" and "Article B"
    Then I should see the author of "Article A" or "Article B"

	Scenario: When articles are merged, the merged article should contain the comments of both previous articles
	Given I am admin
	And I have merged "Article A" and "Article B"
	Then I should see comments from "Article A"
	And I should see comments from "Article B"

  Scenario: When articles are merged, the merged article should contain a title of the previous articles
	Given I am admin
	And I have merged "Article A" and "Article B"
	Then I should see the title from "Article A" or "Article B"