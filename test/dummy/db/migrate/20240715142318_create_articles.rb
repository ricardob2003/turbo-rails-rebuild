# frozen_string_literal: true

class CreateArticles < ActiveRecord::Migration[7.1]
  def change
    create_table :articles do |t|
      t.text :content

      t.timestamps
    end
  end
end
