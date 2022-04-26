# frozen_string_literal: true

require 'capybara/cucumber'
require 'selenium-webdriver'
require 'rspec'
require 'site_prism'
require 'pry'
require 'date'
require 'calabash-cucumber'

browser = ENV['BROWSER']
ENVIRONMENT = YAML.load_file('./config/env.yml')[ENV['PLATFORM']]

Capybara.configure do |config|
  browser = :selenium_chrome if browser.nil?
  config.default_driver = browser.to_sym
  # serve para carregar a página em até 10 seg
  config.default_max_wait_time = 10
end

Capybara.page.driver.browser.manage.window.maximize
