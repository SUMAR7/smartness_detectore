Feature: Smart Generator
  Smartly generating a directory and a template text file

  Scenario: Recipes
    When I run `smartness_detector install smartness ror`
    Then the following files should exist:
      | smartness/ror.txt |
    Then the file "smartness/ror.txt" should contain:
      """
      ##### Ruby on Rails #####
      All ror developers are smart

      ##### Alert #####
      Everything else is dull!
      """