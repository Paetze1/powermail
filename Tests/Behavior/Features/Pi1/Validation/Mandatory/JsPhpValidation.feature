# Features/Pi1/Validation/JsPhpValidation.feature
@Pi1ValidationJsPhpValidation
Feature: JsPhpValidation
  In order to see a word definition
  As a website user
  I need to be able to submit a form

  @javascript @Pi1ValidationJsPhpValidation0
  Scenario: Check if mandatory Validation works (on &L=0)
    Given I am on "/index.php?id=22"
    Then I should see "Input"
    Then I should see "Input (Pattern http://ww)"
    Then I should see "Textarea"
    Then I should see "Select"
    Then I should see "Select Multi"
    Then I should see "Check"
    Then I should see "Radio"
    And I press "Submit"

    Then I should see "Dieses Feld muss ausgefüllt werden!"
    Then I should see "Fehler in Validierung!"
    Then I should see "Eines dieser Felder muss ausgefüllt werden!"
    Then I fill in "tx_powermail_pi1[field][lastname]" with "Christian"
    And I press "Submit"

    Then I should see "Dieses Feld muss ausgefüllt werden!"
    Then I should see "Fehler in Validierung!"
    Then I should see "Eines dieser Felder muss ausgefüllt werden!"
    Then I fill in "tx_powermail_pi1[field][inputpattern]" with "test"
    And I press "Submit"

    Then I should see "Dieses Feld muss ausgefüllt werden!"
    Then I should see "Fehler in Validierung!"
    Then I should see "Eines dieser Felder muss ausgefüllt werden!"
    Then I fill in "tx_powermail_pi1[field][inputpattern]" with "http://www.test.de"
    And I press "Submit"

    Then I should see "Dieses Feld muss ausgefüllt werden!"
    Then I should not see "Fehler in Validierung!"
    Then I should see "Eines dieser Felder muss ausgefüllt werden!"
    Then I fill in "tx_powermail_pi1[field][firstname]" with "Sonntag"
    Then I select "gelb" from "tx_powermail_pi1[field][email]"
    Then I select "blau" from "tx_powermail_pi1[field][selectmulti][]"
    Then I additionally select "lila" from "tx_powermail_pi1[field][selectmulti][]"
    Then I check "tx_powermail_pi1[field][validation][]"
    Then I select "rot" from "tx_powermail_pi1[field][marker]"
    And I press "Submit"

    Then I should see "Sind diese Eingaben korrekt?"
    Then I should see "Christian"
    Then I should see "Sonntag"
    Then I should see "test"
    Then I should see "http://www.test.de"
    Then I should see "gelb"
    Then I should see "blau"
    Then I should see "lila"
    Then I should see "rot"
    And I press "Weiter"

    Then I should see "Danke, Ihre Eingaben:"
    Then I should see "Christian"
    Then I should see "Sonntag"
    Then I should see "test"
    Then I should see "http://www.test.de"
    Then I should see "gelb"
    Then I should see "blau"
    Then I should see "lila"
    Then I should see "rot"

  @javascript @Pi1ValidationJsPhpValidation1
  Scenario: Check if mandatory Validation works (on &L=1)
    Given I am on "/index.php?id=22&L=1"
    Then I should see "Input EN"
    Then I should see "Input (Pattern http://ww) EN"
    Then I should see "Textarea EN"
    Then I should see "Select EN"
    Then I should see "Select Multi EN"
    Then I should see "Check EN"
    Then I should see "Radio EN"
    And I press "Submit EN"

    Then I should see "This field must be filled!"
    Then I should see "Error in validation!"
    Then I should see "One of these fields must be filled!"
    Then I fill in "tx_powermail_pi1[field][lastname]" with "Richter"
    And I press "Submit EN"

    Then I should see "This field must be filled!"
    Then I should see "Error in validation!"
    Then I should see "One of these fields must be filled!"
    Then I fill in "tx_powermail_pi1[field][inputpattern]" with "test"
    And I press "Submit EN"

    Then I should see "This field must be filled!"
    Then I should see "Error in validation!"
    Then I should see "One of these fields must be filled!"
    Then I fill in "tx_powermail_pi1[field][inputpattern]" with "http://www.test.de"
    And I press "Submit EN"

    Then I should see "This field must be filled!"
    Then I should not see "Error in validation!"
    Then I should see "One of these fields must be filled!"
    Then I fill in "tx_powermail_pi1[field][firstname]" with "Dave"
    Then I select "yellow" from "tx_powermail_pi1[field][email]"
    Then I select "blue" from "tx_powermail_pi1[field][selectmulti][]"
    Then I additionally select "green" from "tx_powermail_pi1[field][selectmulti][]"
    Then I check "tx_powermail_pi1[field][validation][]"
    Then I select "red" from "tx_powermail_pi1[field][marker]"
    And I press "Submit EN"

    Then I should see "Are these values correct?"
    Then I should see "Dave"
    Then I should see "Richter"
    Then I should see "test"
    Then I should see "http://www.test.de"
    Then I should see "yellow"
    Then I should see "blue"
    Then I should see "green"
    Then I should see "red"
    And I press "Next"

    Then I should see "Thx, your values:"
    Then I should see "Dave"
    Then I should see "Richter"
    Then I should see "test"
    Then I should see "http://www.test.de"
    Then I should see "yellow"
    Then I should see "blue"
    Then I should see "green"
    Then I should see "red"