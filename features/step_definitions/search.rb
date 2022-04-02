When 'I try to select a valid city' do
    @browser.goto 'https://www.phptravels.net/flights'
    @browser.text_field(id: 'autocomplete').send_keys 'b'
    @browser.text_field(id: 'autocomplete').send_keys :arrow_down
    @browser.send_keys :return
    @browser.send_keys :page_down
    @browser.send_keys :page_down
end

And 'I try to select a valid arrival city' do
    @browser.text_field(id: 'autocomplete2').send_keys 'c'
    @browser.text_field(id: 'autocomplete2').send_keys :arrow_down
    @browser.send_keys :return
end

And 'I try to choose a valid date for departure' do
    #@browser.element(id: 'departure').click
    @browser.text_field(class: 'depart form-control').set '04-01-2023'
end

And 'I try to select first class' do
    @browser.element(id: 'flight_type').set 'First'
end

And 'I click SEARCH' do
   @browser.button(class: 'effect ladda-button waves-effect').click
end

Then 'I get the results of first class seats in the selected date' do
    status = @browser.button(class: 'waves-effect').enabled?
    expect(status).to eq(true)
end