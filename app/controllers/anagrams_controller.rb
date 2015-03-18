class AnagramsController < ApplicationController
  def new
  end

  def create
    @output = AnagramPlus.new(params[:anagram]).process
    render :new
  end
end
