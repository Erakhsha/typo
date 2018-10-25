Feature: Write Articles
  As a blog administrator
  In order to share my thoughts with the world
  I want to be able to add categories to my blog

  Background:
    Given the blog is set up
    And I am logged into the admin panel

  Scenario: Successfully create and edit categories
    Given I am on the new categories page
    When I fill in "category_name" with "Foobar"
    And I fill in "category_keywords" with "Lorem Ipsum"
    And I fill in "category_permalink" with "allakolang"
    And I fill in "category_description" with "kheilighashang"
    And I press "Save"
    Then I should see "Foobar"
    Then I should see "Lorem Ipsum"
    Then I should see "allakolang"
    Then I should see "kheilighashang"

    Then I follow "Foobar"

    When I fill in "category_name" with "Foobar_"
    And I fill in "category_keywords" with "Lorem Ipsum_"
    And I fill in "category_permalink" with "allakolang_"
    And I fill in "category_description" with "kheilighashang_"
    And I press "Save"
    Then I should see "Foobar_"
    Then I should see "Lorem Ipsum_"
    Then I should see "allakolang_"
    Then I should see "kheilighashang_"
