require('capybara/rspec')
require('./app')
set(:show_exceptions, false)
Capybara.app = Sinatra::Application

describe('Keeps track of locations to visit', {:type => :feature}) do
  before() do
    Places.clear()
  end

  it('properly loads clean index') do
    visit('/')
    expect(page).to have_content('Here are the places you want to visit')
  end

  it('correctly displays results page') do
    visit('/')
    fill_in('location', :with => 'Paris')
    click_button('Click me!')
    expect(page).to have_content('The List')
  end

  it('correctly posts user list') do
    visit('/')
    fill_in('location', :with => 'New York')
    click_button('Click me!')
    click_link('The List')
    expect(page).to have_content('New York')
  end

end
