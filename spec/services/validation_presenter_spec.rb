require 'rails_helper'

describe ValidationPresenter do
  context 'instance methods', :vcr do
    it '#get_response - gets result from Oxford dict it will return message if word is invalid' do
      file = File.read('spec/fixtures/mock_successful_validation.json')
      expect_response = "'foxes' is a valid word and its root form is 'fox'."
      validator = ValidationPresenter.new('foxes')
      expect(validator.get_response).to eq(expect_response)

      file_2 = File.read('spec/fixtures/mock_unsuccessful_validation.json')
      expect_response = "'foxez' is not a valid word."
      validator = ValidationPresenter.new('foxez')
      expect(validator.get_response).to eq(expect_response)
    end
  end
end