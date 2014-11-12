require 'rails_helper'

feature "Home", :type => :feature do
  scenario "visiting the home page" do
    # create a new station, based on the definition
    # of the station factory in spec/factories/stations.rb
    station = create(:station)
    #create a departure based on the definition of the departure factory.
    #spec/factories/departure.rb
    departure = create(:departure)

    # see https://github.com/jnicklas/capybara#navigating
    visit root_path    

    # see https://github.com/jnicklas/capybara#querying
    expect(page).to have_text(station.name)
    expect(page).to have_text(departure.time)
  end
end
