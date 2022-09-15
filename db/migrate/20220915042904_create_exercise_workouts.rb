class CreateExerciseWorkouts < ActiveRecord::Migration[6.1]
  def change
    create_table :exercise_workouts do |t|
      t.references :exercise
      t.references :workout

      t.timestamps
    end
  end
end
