*** Settings ***
Documentation  Login Functionality
Library    SeleniumLibrary
Variables  ./PageObject/Locators/Locators.py
Variables  ./PageObject/TestData/TestData.py

# Library    String


*** Variables ***
${TIMEOUT}    60s
${TIMEOUT2}    180s
${SCREENSHOT_DIR}    ../Screenshots/

*** Keywords ***
# User Logs in to the website successfully
Given the user opens the browser
    Open Browser    ${url}    chrome
    Maximize Browser Window
    Set Selenium Implicit Wait    ${TIMEOUT}
    Wait Until Page Contains    ${title}    ${TIMEOUT}
    Sleep    2s
    Capture Page Screenshot    ${SCREENSHOT_DIR}browser_opened.png
When the user verifies the page title
    Title Should Be    ${title}
    Sleep    2s
    Capture Page Screenshot    ${SCREENSHOT_DIR}page_title_verified.png
Then the user waits for the home navigation bar to appear
    Wait Until Element Is Visible    ${home}    ${TIMEOUT}
    Sleep    2s
    Click Element    ${home}
    Sleep    0.5s
    Capture Page Screenshot    ${SCREENSHOT_DIR}home_navigation_bar.png
When the user clicks on the "About" section
    Wait Until Element Is Visible    ${about}    ${TIMEOUT}
    Sleep    2s
    Click Element    ${about}
    Capture Page Screenshot    ${SCREENSHOT_DIR}about_section_clicked.png
And navigates to the header of the "About" page
    Wait Until Element Is Visible    ${about_header}
    Sleep    2s
    Capture Page Screenshot    ${SCREENSHOT_DIR}about_page_header.png
And looks for information in the subheader
    Wait Until Element Is Visible    ${about_subheader}
    Sleep    2s
And the user explores further information in the About section
    Wait Until Element Is Visible    ${contentAbout_p}
    Sleep    3s
    Click Element    ${contentAbout_p}
    Capture Page Screenshot    ${SCREENSHOT_DIR}about_content_clicked.png
And the user proceeds to the "Learn More" button
    Wait Until Element Is Visible    ${LearnMoreButton}    ${TIMEOUT}
    Sleep    3s
    Capture Page Screenshot    ${SCREENSHOT_DIR}learn_more_button_visible.png
And clicks the "Learn More" button
    Click Element    ${LearnMoreButton}
    Sleep    4s
    Capture Page Screenshot    ${SCREENSHOT_DIR}learn_more_clicked.png
Then the user should be redirected to the services section
    Wait Until Element Is Visible    ${services_title}
    Sleep    2s
    Capture Page Screenshot    ${SCREENSHOT_DIR}services_section.png
# User navigates through the services section successfully
Given the user is on the services section
    Wait Until Element Is Visible    ${services}
    Sleep    3s
    Click Element    ${services}
    Capture Page Screenshot    ${SCREENSHOT_DIR}services_navigation.png
When the user moves to the header of the 'Summary' section
    Wait Until Element Is Visible    ${summary_title}
    Sleep    2s
    Capture Page Screenshot    ${SCREENSHOT_DIR}summary_section.png
And the user delves deeper into the information within the Summary section
    Wait Until Element Is Visible    ${summary_section}
    Sleep    2s
    Capture Page Screenshot    ${SCREENSHOT_DIR}summary_details.png
And the user observes a variety of Business Activities Range
    Wait Until Element Is Visible    ${business_range}
    Sleep    3s
    Capture Page Screenshot    ${SCREENSHOT_DIR}business_range.png
And the user learns more about the Business Activities Range
    Wait Until Element Is Visible    ${business_info}
    Sleep    3s
    Capture Page Screenshot    ${SCREENSHOT_DIR}business_info.png
And the user explores various business activities
    Wait Until Element Is Visible    ${business_card}
    Sleep    4s
    Click Element    ${business_card}
    Capture Page Screenshot    ${SCREENSHOT_DIR}business_card_clicked.png
And the user goes to the servicesInfo section
    Wait Until Element Is Visible    ${services_info}
    Sleep    3s
    Capture Page Screenshot    ${SCREENSHOT_DIR}services_info.png
And the user selects the services image
    Wait Until Element Is Visible    ${services_image}
    Sleep    3s
    Click Element    ${services_image}
    Capture Page Screenshot    ${SCREENSHOT_DIR}services_image_clicked.png
And the user navigates to the Why Choose Us section
    Wait Until Element Is Visible    ${choose_section}
    Sleep    3s
    Capture Page Screenshot    ${SCREENSHOT_DIR}choose_us_section.png
And the user proceeds to the Why Choose Us information
    Wait Until Element Is Visible    ${choose_title}
    Sleep    3s
    Capture Page Screenshot    ${SCREENSHOT_DIR}choose_us_info.png
# Verify Contact Information is Displayed Correctly
Given the user is on the "Contact Us" section of the website
    Wait Until Element Is Visible    ${contact_us}
    Sleep    3s
    Click Element    ${contact_us}
    Capture Page Screenshot    ${SCREENSHOT_DIR}contact_us_page.png
When the user view the contact information
    Wait Until Element Is Visible    ${connect_heading}
    Sleep    3s
    Capture Page Screenshot    ${SCREENSHOT_DIR}contact_info_visible.png
Then the user should see the following phone numbers
    Wait Until Element Is Visible    ${phone_number}
    Sleep    0.5s
    Wait Until Element Is Visible    ${number_list}
    Sleep    0.5s
    Capture Page Screenshot    ${SCREENSHOT_DIR}phone_numbers.png
And the user should see the following email addresses
    Wait Until Element Is Visible    ${email_heading}
    Sleep    0.5s
    Wait Until Element Is Visible    ${email_heading}
    Sleep    0.5s
    Capture Page Screenshot    ${SCREENSHOT_DIR}email_addresses.png
And the user should see the website link
    Wait Until Element Is Visible    ${website_heading}
    Sleep    0.5s
    Wait Until Element Is Visible    ${website_list}
    Sleep    0.5s
    Capture Page Screenshot    ${SCREENSHOT_DIR}website_link.png
And the user should see the office location
    Wait Until Element Is Visible    ${office_location}
    Sleep    0.5s
    Wait Until Element Is Visible    ${office_link}
    Sleep    0.5s
    Capture Page Screenshot    ${SCREENSHOT_DIR}office_location.png
# Verify User Can Input Details in the Contact Form
Given user is on the "Contact Us" section of the website
    Wait Until Element Is Visible    ${contact_us}
    Sleep    3s
    Click Element    ${contact_us}
    Capture Page Screenshot    ${SCREENSHOT_DIR}contact_us_navigation.png
When the user enters "Your Name" in the Full Name field
    Wait Until Element Is Visible    ${fullname_heading}
    Sleep    0.5s
    Wait Until Element Is Visible    ${fullname_input}
    Sleep    0.5s
    Input Text    ${fullname_input}    ${fullname}
    Capture Page Screenshot    ${SCREENSHOT_DIR}fullname_entered.png
And the user enters phone number in the Phone field
    Wait Until Element Is Visible    ${phone_heading}
    Sleep    1s
    Wait Until Element Is Visible    ${phone_input}
    Sleep    2s
    Input Text    ${phone_input}    ${phonecontact}
    Capture Page Screenshot    ${SCREENSHOT_DIR}phone_number_entered.png
And the user enters email address in the Email field
    Wait Until Element Is Visible    ${email_heading}
    Sleep    1s
    Wait Until Element Is Visible    ${email_input}
    Sleep    2s
    Input Text    ${email_input}    ${email}
    Capture Page Screenshot    ${SCREENSHOT_DIR}email_entered.png
And the user enters message in the Message field
    Wait Until Element Is Visible    ${message_heading}
    Sleep    1s
    Wait Until Element Is Visible    ${message_input}
    Sleep    2s
    Input Text    ${message_input}    ${message}
    Capture Page Screenshot    ${SCREENSHOT_DIR}message_entered.png
 When the user clicks 'Send Message,' a success confirmation message should be displayed
    Wait Until Element Is Visible    ${sendmessage_button}
    Sleep    1s
    Click Button    ${sendmessage_button}
    Sleep    1s
    Capture Page Screenshot    ${SCREENSHOT_DIR}message_sent_confirmation.png
