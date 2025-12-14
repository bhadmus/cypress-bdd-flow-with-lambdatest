const { defineConfig } = require("cypress");
const createBundler = require("@bahmutov/cypress-esbuild-preprocessor");
const {
  addCucumberPreprocessorPlugin,
} = require("@badeball/cypress-cucumber-preprocessor");
const {
  createEsbuildPlugin,
} = require("@badeball/cypress-cucumber-preprocessor/esbuild");
const { fa } = require("@faker-js/faker");

async function setupNodeEvents(on, config) {
  // This is required for the preprocessor to be able to generate JSON reports after each run, and more,
  await addCucumberPreprocessorPlugin(on, config);

  on(
    "file:preprocessor",
    createBundler({
      plugins: [createEsbuildPlugin(config)],
    })
  );

  // Make sure to return the config object as it might have been modified by the plugin.
  return config;
}

module.exports = defineConfig({
  projectId: "wikvfj",
  e2e: {
    baseUrl: "https://staging.ismojo.com/signup",
    defaultCommandTimeout: 15000,
    viewportHeight: 960,
    viewportWidth: 1530,
    chromeWebSecurity: false,
    watchForFileChanges: false,
    specPattern: "cypress/e2e/**/*.feature",
    setupNodeEvents,
  },
});