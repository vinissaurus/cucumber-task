When 'I try to select a valid city' do
    @browser.text_field(name: 'from').click
    @browser.send_keys 'b' 
    @browser.element(class: 'autocomplete-result').click
end

And 'I try to select a valid arrival city' do
    @browser.text_field(name: 'to').click
    @browser.send_keys 'c'
    @browser.element(class: 'autocomplete-result').click
end

And 'I try to choose a valid date for departure' do
    @browser.element(id: 'departure').click
    @browser.element(class: 'day active').click
end

And 'I try to select first class' do
    @browser.element(id: 'flight type').click
    @browser.element(value: 'first').click
end

And 'I click SEARCH' do
   @browser.button(text: 'Search').click
end

Then 'I get the results of first class seats in the selected date' do
    status = @browser.button(class: 'waves-effect').enabled?
    expect(status).to eq(true)
end