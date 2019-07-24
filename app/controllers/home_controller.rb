class HomeController < ApplicationController
  def index
    @invitaions = Invitaion.all.order(created_at: :desc)
  end
end
