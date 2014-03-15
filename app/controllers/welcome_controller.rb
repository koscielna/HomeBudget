class WelcomeController < ApplicationController
  def index
  end

  def dashboard
    @situations = Situation.all
  end
end
