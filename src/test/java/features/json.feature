
Feature: JSON Feature Testing

  Scenario: JSON Reader Parser
    * def jsonObject =
  """
  [
    {
      "name": "Tom",
      "age": 34,
      "city": 45
    },
    {
      "name": "Peter",
      "age": 44,
      "city": 45
    }
  ]
  """
    * print 'JSON Object:'
    * print jsonObject
    * print 'First element:'
    * print jsonObject[0].name+ jsonObject[1].city+jsonObject[1].age


  Scenario: JSON Reader Parser
    * def jsonObject1 =
  """
  {
    "menu": {
      "id": "file",
      "value": "File",
      "popup": {
        "menuitem": [
          {"value": "New", "onclick": "CreateNewDoc()"},
          {"value": "Open", "onclick": "OpenDoc()"},
          {"value": "Close", "onclick": "CloseDoc()"}
        ]
      }
    }
  }
  """
    * print 'JSON Object:'
    * print jsonObject1