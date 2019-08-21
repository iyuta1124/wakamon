class AddTopicColumnTitlesToTopics < ActiveRecord::Migration[5.2]
  def change
    add_column :topics, :class_name, :string
    add_column :topics, :class_teacher, :string
    add_column :topics, :year, :string
    add_column :topics, :semester, :string
    add_column :topics, :week, :string
    add_column :topics, :term, :string
    add_column :topics, :satisfaction, :string
    add_column :topics, :difficulty_level, :string
    add_column :topics, :assessment, :string
  end
end
