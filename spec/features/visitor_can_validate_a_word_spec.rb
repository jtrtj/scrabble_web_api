require 'rails_helper'

describe 'a visitor' do
  context 'navigating to root path' do
    it 'can enter in a word to have it validated by the oxford dictionary api' do
      visit '/'

      expect(page).to_not  have_content("'foxes' is a valid word and its root form is 'fox'.")

      fill_in 'word',	with: 'foxes' 
      click_on 'Validate Word'

      expect(page).to have_content("'foxes' is a valid word and its root form is 'fox'.")
    end
  end
end
=begin
As a guest user (no sign in necessary)
When I visit "/"
And I fill in a text box with "foxes"
And I click "Validate Word"
Then I should see a message that says "'foxes' is a valid word and its root form is 'fox'."
=end