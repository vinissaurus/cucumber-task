When 'I try to login with valid credentials' do
    @browser.element(name: 'email').send_keys 'user@phptravels.com'
    @browser.element(name: 'password').send_keys 'demouser'
    @browser.element(name: 'Login').click
end

Then 'I get to main user page' do
    status = @browser.button(name: 'Logout').enabled?
    expect(status).to eq(true)
end

When 'I try to login with invalid credentials' do
    @browser.element(name: 'email').send_keys 'user@usr.ur'
    @browser.element(name: 'password').send_keys 'user'
    @browser.element(name: 'Login').click
end

Then 'I get a error message' do
    status = @browser.button(name: 'Login').enabled?
    expect(status).to eq(true)
end