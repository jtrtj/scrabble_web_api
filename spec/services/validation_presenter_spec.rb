require 'rails_helper'

describe ValidationPresenter do
  context 'instance methods' do
    it '#get_response - gets result from Oxford dict' do
      file = File.read('spec/fixtures/mock_successful_validation.json')
      expect_response = JSON.parse(file, symbolize_names: true)
      validator = ValidationPresenter.new('foxes')
      expect(validator.get_response).to eq(expect_response)
    end
  end
end