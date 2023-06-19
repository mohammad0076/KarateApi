Feature: Create User



  Background:
    * url 'https://gorest.co.in'
    * def requestPayload =
    """
    {
      "name": "tom",
      "email": "tom899985r5@gmail.com",
      "gender": "male",
      "status": "active"
    }
    """

  Scenario: Create a user with the given data
    Given path '/public/v2/users'
    And request requestPayload
    And header Authorization = 'Bearer ' +'9f7e40a8f62d809d786390d8f47649b76f29c0d2d887d361babca5c7cbaa0fb0'
    When method post
    Then status 201
    * print response



