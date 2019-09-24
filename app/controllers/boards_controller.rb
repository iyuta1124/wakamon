class BoardsController < ApplicationController
  def index
    @boards = Board.all
    @newboard = Board.new
  end

  def show
  end
  
  def create
    @board = Board.new(params[:board].permit(:title))
    @board.save
    redirect_to boards_index_path
  end
  
  def delete
    @board = Board.find(params[:id])
    @board.destroy
    redirect_to boards_index_path
  end
end
