class TranslateLevels < ActiveRecord::Migration[5.1]
  def self.up
    Level.create_translation_table!({
      :name => :string,
      :description => :text
    }, {
      :migrate_data => true,
      :remove_source_columns => true
    })
  end

  def self.down
    Level.drop_translation_table! :migrate_data => true
  end
end
