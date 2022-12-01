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
Feature: RetailAccountPage

Background:

Given User is on retail website
When User click on Sign in option
And User enter email ' WriteYourEmail ' and password 'WriteYourPassword'
And User click on login button
And User should be logged in into Account
When User click on Account option

@updatePassword

Scenario: Verify User can update Profile Information
When User click on Account option
And User update Name 'Saadaaf' and Phone '8179433961'
And User click on Update button
Then user profile information should be updated

@changePass

Scenario: Verify User can Update password
And User enter below information
| previousPassword | newPassword | confirmPassword |
| WriteYourPassword | WriteYourPassword | WriteYourPassword |
And User click on Change Password button
Then a message should be displayed Password Updated Successfully

@payment

Scenario: Verify User can add a payment method
And User click on Add a payment method link
And User fill Debit or credit card information
| cardNumber | nameOnCard | expirationMonth | expirationYear | securityCode |
| 7362853654616352 | Ekram | 11 | 2027 | 544 |
And User click on Add your card button
Then a message should be displayed Payment Method added successfully

@updateCrad

Scenario: Verify User can edit Debit or Credit card
And User select the payment Card
And User click on Edit option of card section
And user edit information with below data
| cardNumber | nameOnCard | expirationMonth | expirationYear | securityCode |
| 7362859654958555 | Hashim | 12 | 2025 | 499 |
And user click on Update Your Card button
Then a message should be displayed Payment Method updated Successfully

@removeCard

Scenario: Verify User can remove Debit or Credit card
And User select the payment Card
And User click on remove option of card section
Then payment details should be removed

@addAddress

Scenario: Verify User can add an Address
And User click on Add address option
And user fill new address form with below information
| country | fullName | phoneNumber | streetAddress | apt | city | state | zipCode |
| Afghanistan | Sohrab Safi | 8179443582 | Khair-khana | 5800 | Mazar | Logar | 76137 |
And User click on Add Your Address button
Then a message should be displayed Address Added Successfully

@EditAddress

Scenario: Verify User can edit an Address added on account
And User click on edit address option
And User fill new address form with below information
| country | fullName | phoneNumber | streetAddress | apt | city | state | zipCode |
| Afghanistan | Safi Milad | 8179443582 | Kolala Poshta | 459 | kabul | Kabul | 24573 |
And User click update Your Address button
Then a message should be displayed Address Updated Successfully

@removeOldAddress

Scenario: Verify User can remove Address from Account
And User click on remove option of Address section
Then Address details should be removed