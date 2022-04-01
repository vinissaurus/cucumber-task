Before do
    require 'watir'
    require 'rspec'
    require 'json'
    @browser = Selenium::WebDriver::Chrome::Service.driver_path = File.join(
      File.absolute_path('', File.dirname(__FILE__)), 'chromedriver'
    )
    @browser = Watir::Browser.new :chrome, headless: false, options: { options: { detach: false } }
  end
  
  AfterStep do |_scenario|
    screenshot_path = 'results/screenshots'
    screenshot = "#{screenshot_path}/#{Time.now.strftime('%Y%m%d%H%M%S%L')}.png"
    @browser.screenshot.save(screenshot)
    log "<div class=\"material-placeholder\"><img class=\"materialboxed\" width=\"250\" src=\"#{screenshot}\" ></div>"
  end
  