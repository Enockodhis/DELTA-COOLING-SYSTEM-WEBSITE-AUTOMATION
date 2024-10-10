# Delta Cooling System Website Automation

This project automates the testing of Delta Cooling Systems' website, focusing on user login, navigation through services, and verifying contact information. It also validates the functionality of the contact form. The project is built using [Robot Framework](https://robotframework.org/) and SeleniumLibrary.

## Author
- **Enock Odhiambo Omondi**

## Version
- **1.0.0**
## Table of Contents

- [Project Overview](#delta-cooling-system-website-automation)
- [Test Cases](#test-cases)
- [Keywords](#keywords)
- [Project Setup](#project-setup)
- [Running the Tests](#running-the-tests)
- [Screenshots](#screenshots)
## Test Cases

### 1. User Logs in to the website successfully
This test verifies the user's ability to log in to the Delta Cooling Systems website.
- **Tags**: Regression Tests
- **Steps**:
  - Open the browser and navigate to the website.
  - Verify the page title and home navigation bar.
  - Navigate to the "About" section and explore information.
  - Click the "Learn More" button and confirm redirection to the services section.

### 2. User navigates through the services section successfully
This test ensures users can access and explore various sections under services.

### 3. Verify Contact Information is Displayed Correctly
This test checks the correct display of contact information, including phone numbers, emails, website link, and office location.

### 4. Verify User Can Input Details in the Contact Form
This test validates that users can submit contact information successfully.
## Keywords

### Given the user opens the browser
Opens the browser, maximizes the window, and verifies the page title.

```robot
Open Browser    ${url}    chrome
Maximize Browser Window
Set Selenium Implicit Wait    ${TIMEOUT}
Wait Until Page Contains    ${title}    ${TIMEOUT}

### 5. **Project Setup**
   Provide instructions for setting up the project on a local machine.

```markdown
## Project Setup

1. Clone this repository:
   ```bash
   git clone <repository-url>

### 6. **Running the Tests**
   Explain how users can execute the tests.

```markdown
## Running the Tests

To run the test cases, execute the following command:

```bash
robot path_to_test.robot
## Screenshots

Screenshots of each step are automatically saved in the `Screenshots` folder during test execution. You can view these to validate test results.
