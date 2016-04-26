class Admin::SettingsController < ApplicationController

  def index
    if Preference.first
      @preference = Preference.first
    else
      @preference = Preference.create
    end
  end

  def update
    Preference.first.update(settings_params)
    redirect_to admin_settings_index_path
  end

  private

  def settings_params
    params.require(:preference).permit(:allow_create_songs, :allow_create_artists, :song_sort_order, :artist_sort_order, :id)
  end
end
