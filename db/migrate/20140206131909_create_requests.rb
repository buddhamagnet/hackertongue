class CreateRequests < ActiveRecord::Migration
  def change
    create_table :requests do |t|
      t.string :path
      t.string :remote
      t.string :ip

      t.timestamps
    end
  end
end
