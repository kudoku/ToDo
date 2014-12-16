class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|

      t.timestamps
      t.string      :title
      t.string      :category
      t.string      :priority
      t.boolean     :is_completed, default: false

    end
  end
end
