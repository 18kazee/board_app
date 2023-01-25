class BookmarksController < ApplicationController

  def create
    board = Board.find(params[:board_id])
    current_user.bookmark(board)
    redirect_back fallback_location: :root
  end

  def destroy
    board = current_user.bookmarks.find_by(params[:board_id]).board
    current_user.unbookmark(board)
    redirect_back fallback_location: :root
  end
end
