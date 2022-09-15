class ChangeTypeColumnWorkouts < ActiveRecord::Migration[6.1]
  def change
    rename_column :workouts, :type, :workouttype
    
  end
end
