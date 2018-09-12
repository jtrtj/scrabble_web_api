require 'rails_helper'

describe ValidationPresenter do
  context 'instance methods' do
    it '#get_response - gets result from Oxford dict it will return message if word is invalid' do
      file = File.read('spec/fixtures/mock_successful_validation.json')
      expect_response = "'foxes' is a valid word and its root form is 'fox'."
      validator = ValidationPresenter.new('foxes')
      expect(validator.get_response).to eq(expect_response)
    end

    it '#message - returns the message for the view from its results' do
      expected_result = "'foxes' is a valid word and its root form is 'fox'."
      validator = ValidationPresenter.new('foxes')
      expect(validator.message).to eq(expected_result)
    end
  end
end