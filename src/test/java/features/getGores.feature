Feature: Get API

  Background:
    Given url 'https://gorest.co.in/public/v2/posts'

  Scenario: Sort the GET
    Given path '45720'
    When method GET
    Then status 200
    * print response
    * def jsonResponse = response
    * print jsonResponse
    * def title = jsonResponse.title

    * def body = jsonResponse.body
    * match title == 'Sub curis patria sollers corrupti.'

    * match body == 'Vulgaris qui argentum. Aggero carpo eius. Umbra vulpes cicuta. Culpa barba patior. Patior audio debitis. Aequus aggero itaque. Inventore speculum quod. Sufficio comitatus conitor. Bonus desolo colo. Suscipio cicuta cauda. Ancilla denuo tamen. Atrox arcus curia. Et tamen saepe. Ulciscor aetas id.'

  Scenario: when user not found
    Given path '4570'
    When method GET
    Then status 404