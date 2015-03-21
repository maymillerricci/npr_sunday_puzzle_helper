class AnagramsController < ApplicationController
  def new
  end

  def create
    @answer = AnagramPlus.new(params[:anagram]).process
    render :new
  end
end
