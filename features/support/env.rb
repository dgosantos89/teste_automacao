require 'rspec'
require 'capybara/cucumber'
require 'selenium-webdriver'

Capybara.default_driver = :selenium

#driver = Selenium::WebDriver.for :firefox