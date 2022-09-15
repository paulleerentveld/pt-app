class CreateClientWorkouts < ActiveRecord::Migration[6.1]
  def change
    create_table :client_workouts do |t|
      t.references :client
      t.references :workout
      t.date :workoutdate

      t.timestamps
    end
  end
end
