class PagesController < ApplicationController
  def home
    @party = Party.new
  end
end
