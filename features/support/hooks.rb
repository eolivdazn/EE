require 'selenium-webdriver'

Before do

  @browser = Selenium::WebDriver.for :chrome ,driver_path: Dir.pwd+'/browsers/chromedriver.exe'
  @browser.manage.window.maximize
end


After do |scenario|
  if scenario.failed? #take pic save , embed in report
    print path = @browser.current_url
    @browser.save_screenshot("report/#{scenario.__id__}.png")
    embed("report/#{scenario.__id__}.png", "image/png", "SCREENSHOT")
  end

  @browser.close
  @browser.quit

end