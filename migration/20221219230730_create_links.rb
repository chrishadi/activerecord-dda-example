class CreateLinks < ActiveRecord::Migration[7.0]
  def change
    create_table :links, if_not_exists: true do |t|
      t.text :url
    end
  end
end