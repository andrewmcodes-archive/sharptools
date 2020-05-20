class WelcomeController < ApplicationController
  before_action :authenticate_admin!, only: :index
  # before_filter :authenticate_admin!

  def index
  end
end
