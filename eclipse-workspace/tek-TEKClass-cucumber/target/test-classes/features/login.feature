#Author: your.email@your.domain.com
#Keywords Summary :
#Feature: List of scenarios.
#Scenario: Business rule through list of steps with arguments.
#Given: Some precondition step
#When: Some key actions
#Then: To observe outcomes or validation
#And,But: To enumerate more Given,When,Then steps
#Scenario Outline: List of steps for data-driven as an Examples and <placeholder>
#Examples: Container for s table
#Background: List of steps run before each of the scenarios
#""" (Doc Strings)
#| (Data Tables)
#@ (Tags/Labels):To group Scenarios
#<> (placeholder)
#""
## (Comments)
#Sample Feature Definition Template
Feature: Signin
@signInTest

Scenario: Verify user can sign in into Retail Application
Given User is on retail website
When User click on Sign in option
And User enter email 'WriteYourEmail' and password 'WriteYourPassword'
And User click on login button
Then User should be logged in into Account

@CreateAccount

Scenario: Verify user can create an account into Retail Website
Given User is on retail website
When User click on Sign in option
And User click on Create New Account button
And User fill the signUp information with below data
| name | email | password | confirmPassword |
| panthers | WriteYourEmail | Tek@12345 | Tek@12345 |
And User click on SignUp button
Then User should be logged into account page