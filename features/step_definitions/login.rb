When 'I try to login with valid credentials' do
    @browser.element(name: 'email').send_keys 'user@phptravels.com'
    @browser.element(name: 'password').send_keys 'demouser'
    @browser.send_keys :return
end

Then 'I get to main user page' do
    status = @browser.button(text: 'Logout').enabled?
    expect(status).to eq(true)
    @browser.button(text: 'Logout').click
    @browser.close
end

When 'I try to login with invalid credentials' do
    @browser.element(name: 'email').send_keys 'user@usr.ur'
    @browser.element(name: 'password').send_keys 'user'
    @browser.send_keys :return
end

Then 'I get a error message' do
    status = @browser.button(text: 'Login').enabled?
    expect(status).to eq(false)
    @browser.close
end