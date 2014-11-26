class CreateTopics < ActiveRecord::Migration
  def change
    create_table :topics do |t|
      t.text     :title1
      t.string   :title1_tag
      t.text     :title2
      t.string   :title2_tag
      t.integer  :user_id
      
      t.timestamps
    end
  end
end
