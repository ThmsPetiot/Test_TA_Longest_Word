class PartiesController < ApplicationController
  before_action :new_list
  def new
    @party = Party.new
    raise
  end

  def create
    @party = Party.new(ten_letters_list: @ten_letters_list, word: params[:word] )
    @party.save
    raise
  end

  def new_list
    array = ('A'..'Z').to_a
    array_vowels = ["A","E","I","O","U","Y"]
    array_cons = array.reject { |letter| array_vowels.include?(letter) }
    @ten_letters_list = array_vowels.sample(5)
    @ten_letters_list + array_cons.sample(5)
  end

  private

  def party_params
    params.require(:party).permit(:ten_letters_list, :word, :available)
  end
end
