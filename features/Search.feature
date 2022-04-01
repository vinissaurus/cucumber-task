# encoding: utf-8
Feature: Search

    Background:
        Given I'm on the home page after logged in

    Scenario: Search for a flight

        When I try to select a valid city
        And I try to select a valid arrival city
        And I try to choose a valid date for departure
        And I try to select first class
        And I click SEARCH
        Then I get the results of first class seats in the selected date