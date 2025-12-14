import { Given, When, Then } from '@badeball/cypress-cucumber-preprocessor'
let data
const username = `test${Date.now()}`
const emailAddress = `${username}@maildrop.cc`

before(()=>{
    cy.fixture('selectors').then(el=>{
        data = el
    })
})


When(/^I click the "([^"]*)" (button|link)$/, (text, elementType) => {
	cy.clickAnyElement(text, elementType)
});


Given(/^I am on the home page$/, () => {
    cy.visit('/')
});

When(/^I insert the email$/, () => {
	cy.insertText(data.isMojo.useremailFld, emailAddress)
});

When(/^I select the account type$/, () => {
	cy.get("select[name='profession']").select('Personal')
});

When(/^I checked terms$/, () => {
	cy.get('input#term-box').check()
});


Then(/^I insert the OTP$/, () => {
	cy.insertOTP(username)
});

Then(/^I should be signed in$/, () => {
	cy.verifyEmailLink(username)
});

When(/^I insert "([^"]*)" in the "([^"]*)"$/, (value,element) => {
	cy.insertSomeText(value,element);
});

When(/^I select the country as "([^"]*)"$/, (country) => {
	cy.get('select#nationality').select(country)
});
