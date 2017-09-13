class StocksController < ApplicationController
  def search
    # If we get a stock passed in,
    if params[:stock]
      # Find that stock in db:
      @stock = Stock.find_by_ticker(params[:stock])
      # Or equals, look up stock:
      @stock ||= Stock.new_from_lookup(params[:stock])
    end

    if @stock
      # Render actual instance variable of stock.
      # URL: 'http://localhost:3000/search_stocks?stock=GOOG' will return JSON output.
      # render json: @stock

      render partial: 'lookup'
    else
      render status: :not_found, nothing: true
    end
  end
end
