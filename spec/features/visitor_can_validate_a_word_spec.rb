require 'rails_helper'

describe 'a visitor' do
  context 'navigating to root path', :vcr do
    it 'can enter in a word to have it validated by the oxford dictionary api' do
      visit '/'

      expect(page).to_not  have_content("'foxes' is a valid word and its root form is 'fox'.")

      fill_in 'word',	with: 'foxes' 
      click_on 'Validate Word'

      expect(page).to have_content("'foxes' is a valid word and its root form is 'fox'.")
    end

    it 'will be told when it enters an invalid word', :vcr do
      visit '/'

      expect(page).to_not have_content("'foxez' is not a valid word.")

      fill_in 'word',	with: 'foxez' 
      click_on 'Validate Word'

      expect(page).to have_content("'foxez' is not a valid word.")
    end
  end
end