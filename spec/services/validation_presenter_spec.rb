require 'rails_helper'

describe ValidationPresenter do
  context 'instance methods' do
    it '#get_result - gets result from Oxford dict' do
      file = File.read('spec/fixtures/mock_successful_validation.json')
      expect_result = JSON.parse(file, symbolize_names: true)
      validator = ValidationPresenter.new('foxes')
      expect(validator.get_result).to eq()
    end
  end
end