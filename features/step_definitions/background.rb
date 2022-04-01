Given "I\'m on the login screen" do
    @browser.window.resize_to(1366,768)
    @browser.goto 'https://www.phptravels.net/login'
end

Given "I\'m on the home page" do
    @browser.window.resize_to(1366,768)
    @browser.goto 'https://www.phptravels.net/'
end