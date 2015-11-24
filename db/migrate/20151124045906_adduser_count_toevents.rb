class AdduserCountToevents < ActiveRecord::Migration
  def change
  	add_column :events, :user_count, :integer
  	
  end
end
