class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string:name,            null:false
      t.string:name_reading,    null:false
      t.string:nickname,        null:false
      t.timestamps
    end
  end
end
