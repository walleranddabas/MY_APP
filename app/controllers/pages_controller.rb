class PagesController < ApplicationController
  def home
  end
  def team
    @members = ["Got", "Simon", "Nico", "the beast"]
  end
  def join_us
    render plain: "send a mail"
  end
end
