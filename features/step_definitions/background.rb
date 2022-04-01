Given "I\'m on the login screen" do
    @browser.window.resize_to(1366,768)
    @browser.goto 'https://www.phptravels.net/login'
end

Given "I\'m on the home page" do
    @browser.window.resize_to(1366,768)
    @browser.goto 'https://www.phptravels.net/'
end

Given "I\'m on the home page after logged in" do
    @browser.window.resize_to(1366,768)
    @browser.goto 'https://www.phptravels.net/login'
    @browser.element(name: 'email').send_keys 'user@phptravels.com'
    @browser.element(name: 'password').send_keys 'demouser'
    @browser.send_keys :return
    @browser.goto 'https://www.phptravels.net/flights'
end