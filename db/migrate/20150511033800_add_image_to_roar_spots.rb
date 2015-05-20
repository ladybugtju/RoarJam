class AddImageToRoarSpots < ActiveRecord::Migration
  def change
    add_column :roar_spots, :image, :string
  end
end
