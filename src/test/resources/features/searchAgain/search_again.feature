Feature: Search Again by keyword

  Scenario Outline: Searching Again for a category
    Given Sergey is researching things on the "<category>"
    When  he looks up "Cucumber"
    Then  he should see information about "Cucumber"

    @Category:A
    Examples:
      | category |
      | A1       |
      | A2       |

    @Category:A
    Examples:
      | category |
      | B1       |
      | B2       |

  Scenario Outline: Creating Again a new category
    Given Sergey is creating things about the "<category>"
    When  he looks up "Cucumber"
    Then  he should see information about "Cucumber"

    @Category:A
    Examples:
      | category |
      | A1       |
      | A2       |

    @Category:C
    Examples:
      | category |
      | B1       |
      | B2       |
