class ChangeDefaultOfSongSortOrder < ActiveRecord::Migration
  def change
    change_column :preferences, :song_sort_order, :string, :default => "DESC"
    change_column :preferences, :artist_sort_order, :string, :default => "DESC"
  end
end
