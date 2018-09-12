class ValidationsController < ApplicationController
  def show
    @result = ValidationPresenter.new(params[:word])
  end
end