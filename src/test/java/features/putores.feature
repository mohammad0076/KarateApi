Feature: Create User

  Background:
    * url 'https://gorest.co.in'
    * def requestPayload =
    """
    {

     "body":"Et."
    }
    """

  Scenario: Create a user with the given data
    Given path 'public/v2/comments/41136'
    And request requestPayload
    And header Authorization = 'Bearer ' +'9f7e40a8f62d809d786390d8f47649b76f29c0d2d887d361babca5c7cbaa0fb0'
    When method put
    Then status 200
    * print response
    And match response.name == "Sukanya Saini"
    And match response.email == "sukanya_saini@block-quitzon.test"



