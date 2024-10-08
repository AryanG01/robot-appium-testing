# Robot Framework Test Automation Project

This project is a test automation suite built using the [Robot Framework](https://robotframework.org/). It is structured to separate test data, resources, and test cases for maintainability and scalability.

## Project Structure

### 1. **Data Folder**
  - **Location**: `/Data`
  - **Purpose**: Contains external data files used by test cases. This may include CSV, JSON, or Excel files that provide input to the tests.
  - **Examples**:
    - `test_data.csv`: Contains test data such as user credentials, configurations, or parameters needed by the tests.

### 2. **Output Folder**
  - **Location**: `/Output`
  - **Purpose**: Stores the output files generated after running the tests.
  - **Generated Files**:
    - `output.xml`: A detailed result of the entire test run.
    - `log.html`: A log file with in-depth information about each test step.
    - `report.html`: A summary report of test results (e.g., pass/fail status).

### 3. **Resources Folder**
  - **Location**: `/Resources`
  - **Purpose**: Contains reusable resource files such as keywords, variables, and common libraries.
  - **Examples**:
    - `login_keywords.robot`: Custom keywords for handling user login.
    - `utility_keywords.robot`: Shared utility keywords like `Wait for Element` or `Take Screenshot`.

### 4. **Tests Folder**
  - **Location**: `/Tests`
  - **Purpose**: This folder contains the actual test cases written in the Robot Framework. Each `.robot` file can have multiple test cases, and related tests are grouped for easier management.
  - **Examples**:
    - `login_tests.robot`: Test cases for the login functionality.
    - `registration_tests.robot`: Test cases for user registration.
  - **Compulsory Components**
    - `Settings`
    - `Test Cases`

## Installation & Setup

1. Clone this repository:
  ```bash
  git clone <repository_url>
  ```

## Running Tests

You can run the tests using the `robot` command. Below are some examples of how to execute the tests with various options:

1. **Basic Test Run**:
  ```bash
  robot -d Output Tests
  ```

2. **Randomize Test Order**:
  ```bash
  robot -d Output --randomize all Tests
  ```

3. **Run Specific Tests by Tag**:
  ```bash
  robot -d Output -i demoANDdemo2 Tests
  ```

4. **Set Log Level to DEBUG**:
  ```bash
  robot -d Output --loglevel DEBUG Tests
  ```

5. **Combining Options**:
  ```bash
  robot -d Output --randomize all -i demoANDdemo2 --loglevel DEBUG Tests
  ```

These commands allow you to customize the test execution according to your needs, providing flexibility in how you run and manage your test suite.
 