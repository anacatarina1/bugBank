# frozen_string_literal: true

After do |scenario|
    Dir.mkdir('reports') unless Dir.exist?('reports')
    page.save_screenshot 'reports/image.png'
    embed('reports/image.png')
  
    if page.driver.browser.window_handles.count > 1
      page.driver.browser.close
      last_handle = page.driver.browser.window_handles.last
      page.driver.browser.switch_to.window(last_handle)
    end
  
    Capybara.reset_sessions!
  end
  
  at_exit do
    require 'report_builder'
    platform = ENV['PLATFORM']
    ReportBuilder.configure do |config|
      config.input_path = 'reports/cucumber_json'
      config.report_path = 'reports/report'
      config.include_images = true
      config.color = 'blue'
      config.report_title = 'Plataforma TRATO WEB'
      config.additional_info = { browser: 'Chrome', Environment: platform }
    end
    ReportBuilder.build_report
  end
  