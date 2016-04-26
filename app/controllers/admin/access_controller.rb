class Admin::AccessController < ApplicationController

  def index
    if !Preference.first
      @preference = Preference.create
    else
      @preference = Preference.first
    end
  end

  def update
    Preference.first.update(access_params)
    redirect_to admin_access_index_path
  end

  private

  def access_params
    params.require(:preference).permit(:allow_create_songs, :allow_create_artists, :song_sort_order, :artist_sort_order, :id)
  end
end
