class CreateTopics < ActiveRecord::Migration
  def change
    create_table :topics do |t|
      t.integer  :talk_group_id
      t.text     :title
      t.string   :title_tag
      
      t.timestamps
    end
  end
end
