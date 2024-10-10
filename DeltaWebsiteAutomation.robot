*** Settings ***
Metadata    Author    Enock Odhiambo Omondi
Metadata    Version    1.0.0
Documentation  Delta Cooling System Website Automation
Resource   ../Resources/Keywords.robot

*** Test Cases ***
User Logs in to the website successfully
    [Documentation]      A user logging into the Delta Cooling System website.
    [Tags]    Regression Tests
    Given the user opens the browser
    When the user verifies the page title
    Then the user waits for the home navigation bar to appear
    When the user clicks on the "About" section
    And navigates to the header of the "About" page
    And looks for information in the subheader
    And the user explores further information in the About section
    And the user proceeds to the "Learn More" button
    And clicks the "Learn More" button
    Then the user should be redirected to the services section
User navigates through the services section successfully
    [Documentation]      This test validates the user's ability to access services into the Delta Cooling System website.
    [Tags]    Regression Tests
    Given the user is on the services section
    # When the user moves to the header of the 'Summary' section
    # And the user delves deeper into the information within the Summary section
    # And the user observes a variety of Business Activities Range
    # And the user learns more about the Business Activities Range
    # And the user explores various business activities
    # And the user selects the services image
    # And the user navigates to the Why Choose Us section
    # And the user proceeds to the Why Choose Us information
Verify Contact Information is Displayed Correctly
    [Documentation]    This test verifies that the correct contact information is displayed in the "Contact Us" section. It checks for the presence of phone numbers, email addresses, the website link, and the office location as per the provided details on the website.
    [Tags]    Regression Tests
    Given the user is on the "Contact Us" section of the website
    When the user view the contact information
    Then the user should see the following phone numbers
    And the user should see the following email addresses
    And the user should see the website link
    And the user should see the office location
Verify User Can Input Details in the Contact Form
    [Documentation]    This test ensures that users can successfully input their contact information (Full Name, Phone Number, Email, and Message) in the contact form on the "Contact Us" page and that the form accepts valid inputs. Upon clicking 'Send Message,' a success confirmation should appear.     
    [Tags]    Regression Tests
    Given user is on the "Contact Us" section of the website
    When the user enters "Your Name" in the Full Name field
    And the user enters phone number in the Phone field
    And the user enters email address in the Email field
    And the user enters message in the Message field
    When the user clicks 'Send Message,' a success confirmation message should be displayed

