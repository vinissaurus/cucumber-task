When 'I try to login with valid credentials' do
    @browser.element(name: 'email').send_keys 'user@phptravels.com'
    @browser.element(name: 'password').send_keys 'demouser'
    @browser.send_keys :return
end

Then 'I get to main user page' do
    @browser.goto 'https://www.phptravels.net/account/dashboard'
    status = @browser.button(class: 'waves-effect').wait_until.enabled? do
    expect(status).to eq(true)
    @browser.button(class: 'waves-effect').click
    @browser.close
    end
end

When 'I try to login with invalid credentials' do
    @browser.element(name: 'email').send_keys 'user@usr.ur'
    @browser.element(name: 'password').send_keys 'user'
    @browser.send_keys :return
end

Then 'I get a error message' do
    status = @browser.button(class: 'waves-effect').wait_until.enabled? 
    expect(status).to eq(true)
    @browser.close
end