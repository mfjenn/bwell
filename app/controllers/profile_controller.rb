class ProfileController < ApplicationController
  
  before_filter :authorize, only: [:edit, :update]
  
  def new
  end

  def home
  end

  def history
  end
end
