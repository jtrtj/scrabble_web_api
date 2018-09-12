class ValidationsController < ApplicationController
  def show
    @result = ValidationPresenter.new(params[:word]).get_response
  end
end