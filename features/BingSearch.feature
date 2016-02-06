Feature:
  "When I go to the Bing search page, and search for an item, I expect to see some reference to that item in the result summary."

  Scenario:
    Given that I have gone to the Bing page
    When I add "cats" to the search box
    And click the Search Button
    Then "cats" should be mentioned in the results

  Scenario:
    Given that I have gone to the Bing page
    When I add "JetBrains" to the search box
    And click the Search Button
    Then "IntelliJ" should be mentioned in the results