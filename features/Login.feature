# encoding: utf-8
Feature: Login

    Background:
        Given I'm on the login screen

    Scenario: Login with valid credentials

        When I try to login with valid credentials
        Then I get to main user page

    Scenario: Login with invalid credentials

        When I try to login with invalid credentials
        Then I get a error message