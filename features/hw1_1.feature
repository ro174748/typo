Feature: Merging Articles

  Background:
    Given the blog is set up
    And I am logged into the admin panel

  Scenario: Successfully merge article
    Given I am on the new article page
    When I fill in "article_title" with "Test Article"
    And I fill in "article__body_and_extended_editor" with "First body of the article"
    And I press "Publish"
    When I follow "Test Article"
    When I fill in "merge_with" with "1"
    And I press "Merge"
    When I go to the home page
    When I follow "Test Article"
    Then I should see "Welcome to Typo. This is your first article. Edit or delete it, then start blogging!"
    
