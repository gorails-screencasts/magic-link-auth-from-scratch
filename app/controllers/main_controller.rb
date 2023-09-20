class MainController < ApplicationController
  def index
    authenticate
  end
end