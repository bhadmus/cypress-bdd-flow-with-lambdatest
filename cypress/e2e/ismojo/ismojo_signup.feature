Feature: Ismojo Sign Up

    @dev @stage
    Scenario Outline: User should be able to retrieve OTP and complete the sign up form as someone from <country>
        Given I am on the home page
        When I insert the email
        And I checked terms
        And I click the "Next" button
        Then I insert the OTP
        When I insert "2000-10-10" in the "input#date"
        And I select the country as "<country>"

        Examples:
            | country  |
            | Nigeria  |
            | Ghana    |
            # | Honduras |
            # | Panama   |
            # | Chile    |
            # | Brazil   |
            # | Qatar    |
            # | China    |
            # | Samoa    |
            # | Fiji     |