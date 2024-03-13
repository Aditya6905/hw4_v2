class EntriesController < ApplicationController
  before_action :require_login

  def new
    @entry = Entry.new
  end

  def create
    @entry = current_user.entries.build(entry_params)
    if @entry.save
      redirect_to places_path, notice: 'Entry created successfully!'
    else
      render :new
    end
  end

  private

  def entry_params
    params.require(:entry).permit(:title, :description, :occurred_on, :place_id)
  end
end