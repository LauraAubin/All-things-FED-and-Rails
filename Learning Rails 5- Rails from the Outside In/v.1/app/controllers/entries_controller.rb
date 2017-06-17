class EntriesController < ApplicationController
  def log_in
    @name = params[:visitor_name]
    unless @name.blank?
      @entry = Entry.create({:name => @name})
    end
  end
end
