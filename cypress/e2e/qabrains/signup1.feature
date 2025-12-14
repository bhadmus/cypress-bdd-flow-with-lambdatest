Feature: Signup

    Scenario Outline: A user should be able to signup for a personal account on qabrains page from <country>
        Given I am on the home page
        When I click the "Sign In" button
        And I click the "Sign up" link
        And I insert "Ademola Bhadmus" in the "input[name='name']"
        And I insert the email
        And I select the country as "<country>"
        And I select the account type
        And I insert "Test@1234" in the "input[name='password']"
        And I insert "Test@1234" in the "input[name='password_confirmation']"
        And I checked terms
        And I click the "Sign Up" button
        Then I should be signed in

        Examples:
            | country    |
            | Guinea     |
            | East Timor |
            | Honduras   |
            | Panama     |
            | Chile      |
            | Brazil     |
            | Qatar      |
            | China      |
            | Samoa      |
            | Fiji       |


# @focus
# Scenario: A user should be able to signup for a personal account on qabrains page from Nigeria
#     Given I am on the home page
#     When I click the "Sign In" button
#     And I click the "Sign up" link
#     And I insert "Ademola Bhadmus" in the "input[name='name']"
#     And I insert the email
#     And I select the country as Nigeria
#     And I select the account type
#     And I insert "Test@1234" in the "input[name='password']"
#     And I insert "Test@1234" in the "input[name='password_confirmation']"
#     And I checked terms
#     And I click the "Sign Up" button
#     Then I should be signed in

# Scenario: A user should be able to signup for a personal account on qabrains page from Ghana
#     Given I am on the home page
#     When I click the "Sign In" button
#     And I click the "Sign up" link
#     And I insert "Ademola Bhadmus" in the "input[name='name']"
#     And I insert the "email"
#     And I select the country as Ghana
#     And I select the account type
#     And I insert "Test@1234" in the "input[name='password']"
#     And I insert "Test@1234" in the "input[name='password_confirmation']"
#     And I checked terms
#     And I click the "Sign Up" button
#     Then I should be signed in

# @focus
# Scenario: A user should be able to signup for a personal account on qabrains page from Honduras
#     Given I am on the home page
#     When I click the "Sign In" button
#     And I click the "Sign up" link
#     And I insert "Ademola Bhadmus" in the "input[name='name']"
#     And I insert the email
#     And I select the country as Honduras
#     And I select the account type
#     And I insert "Test@1234" in the "input[name='password']"
#     And I insert "Test@1234" in the "input[name='password_confirmation']"
#     And I checked terms
#     And I click the "Sign Up" button
#     Then I should be signed in

# Scenario: A user should be able to signup for a personal account on qabrains page from Panama
#     Given I am on the home page
#     When I click the "Sign In" button
#     And I click the "Sign up" link
#     And I insert "Ademola Bhadmus" in the "input[name='name']"
#     And I insert the "email"
#     And I select the country as Panama
#     And I select the account type
#     And I insert "Test@1234" in the "input[name='password']"
#     And I insert "Test@1234" in the "input[name='password_confirmation']"
#     And I checked terms
#     And I click the "Sign Up" button
#     Then I should be signed in