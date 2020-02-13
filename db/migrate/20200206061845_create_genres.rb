class CreateGenres < ActiveRecord::Migration[5.2]
  def change
    create_table :genres do |t|
	    t.string :name, null: false
	    t.boolean :genre_status, default: true, null: false
	    t.boolean :a, default: true
	    t.boolean :b, default: false
	    t.datetime :created_at, null: false
	    t.datetime :updated_at, null: false
    end
  end
end
