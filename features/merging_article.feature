Feature: Create merged article
	As a blog administrator
	In order to gift my thoughts to the world
	I want to create a article from two merged articles

  Background:
    Given the blog is set up
    And I am logged into the admin panel
	
	Scenario: Create merged article
		Given I am on the edit page
		And I should see "Merge with"
		And Form contain id "merge_with"
		And Form element "merge_with" is exclusive
		When I fill in "article_with" with "12"
		And I press "Merge"
		Then I should see merged content
		And Comments contain post from merged article