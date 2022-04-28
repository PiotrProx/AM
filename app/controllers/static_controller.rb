class StaticController < ApplicationController
  def index
    @us = User.all
  end
end
