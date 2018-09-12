class ValidationsController < ApplicationController
  def show
    @result = ValidationPresenter.new(params[:word])
    render 'welcome/index'
  end
end