Feature: Detect
  Detect Smartness and Pluralize Words

  Scenario: Everything is Dull!
    When I run `smartness_detector smartness everything`
    Then the output should contain "Dull!"

  Scenario: RoR is Smart!
    When I run `smartness_detector smartness RoR`
    Then the output should contain "Smart!"

  Scenario: Pluralize the word Smart
    When I run `smartness_detector pluralize --word Smart`
    Then the output should contain "Smarts"