require('capybara/rspec')
require('./app')
set(:show_exceptions, false)
Capybara.app = Sinatra::Application

describe('Keeps track of locations to visit', {:type => :feature}) do
  it('properly loads clean index') do
    visit('/')
    expect(page).to have_content('Here are your places to visit.')
  end
  it('correctly displays results page') do
    visit('/')
    fill_in('location', :with => 'Paris')
    click_button('Submit')
    expect(page).to have_content('Locations')
  end

  it('correctly posts user list') do
    visit('/')
    fill_in('task', :with => 'New York')
    click_button('Submit')
    click_link('The List')
    expect(page).to have_content('New York')
  end
  
end
