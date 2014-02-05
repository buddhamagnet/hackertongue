class CreateHackers < ActiveRecord::Migration
  def change
    create_table :hackers do |t|
      t.string :username
      t.string :language

      t.timestamps
    end
  end
end
