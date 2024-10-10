# DELTA-COOLING-SYSTEM-WEBSITE-AUTOMATION
This project automates the Delta Cooling Systems website testing process using Robot Framework and SeleniumLibrary. It verifies key functionalities such as login, navigation through services, verifying contact details, and submitting the contact form.

![image](https://github.com/user-attachments/assets/a6ba91e1-9b0e-4c4f-840c-e344e46b9a7d)
![image](https://github.com/user-attachments/assets/a5fbeefd-9b26-4d77-afb6-1be0b75dbe9c)

# Table of Contents
- [Project Overview](#project-overview)
- [Project Structure](#project-structure)
- [Prerequisites](#prerequisites)
- [Installation](#installation)
- [Test Cases](#test-cases)
- [How to Run](#how-to-run)
- [Contributing](#contributing)

## Project Overview

Delta Cooling Systems website automation project automates the following test cases:
- User successfully logs into the website.
- Navigation through the services section.
- Verifying that contact information is displayed correctly.
- Testing the functionality of the contact form.

The project uses Robot Framework, SeleniumLibrary for browser automation, and is structured for scalability and maintainability.

## Project Structure

```plaintext
.
├── README.md                   # Project Documentation
├── Tests
│   └── DeltaWebsiteAutomation.robot   # Test cases for website automation
├── Resources
│   ├── Keywords.robot           # Keywords for login, navigation, contact form
│   └── Locators.py              # XPath locators for elements on the website
│   └── TestData.py              # Test data for the website (e.g., URLs, inputs)
├── Results                      # Results after running tests (screenshots, logs, reports)
└── Screenshots                  # Screenshots captured during test execution

## Prerequisites
Ensure you have the following installed on your system:
Python 3.x
Robot Framework
SeleniumLibrary
A browser driver (e.g., ChromeDriver or GeckoDriver)

## Install Robot Framework and SeleniumLibrary:
pip install robotframework
pip install robotframework-seleniumlibrary

How to Run
Navigate to the project directory:

bash
cd delta-website-automation/Tests
Run the automation tests:

bash
robot --outputdir ../Results DeltaWebsiteAutomation.robot
Check the results in the Results folder, including logs and screenshots.



