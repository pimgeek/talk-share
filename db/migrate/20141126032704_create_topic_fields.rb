class CreateTopicFields < ActiveRecord::Migration
  def change
    create_table :topic_fields do |t|
      t.integer  :topic_id

      t.text     :title
      t.string   :title_tag
      
      t.timestamps
    end
  end
end
