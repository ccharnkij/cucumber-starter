Feature: Search by keyword

  Scenario Outline: Searching for a category
    Given Sergey is researching things on the "<category>"
    When  he looks up "Cucumber"
    Then  he should see information about "Cucumber"

  @Category:A
    Examples:
      | category |
      | A1       |
      | A2       |

  @Category:B
    Examples:
      | category |
      | B1       |
      | B2       |

  Scenario Outline: Creating a new category
    Given Sergey is creating things about the "<category>"
    When  he looks up "Cucumber"
    Then  he should see information about "Cucumber"

  @Category:B
    Examples:
      | category |
      | A1       |
      | A2       |

  @Category:C
    Examples:
      | category |
      | B1       |
      | B2       |
