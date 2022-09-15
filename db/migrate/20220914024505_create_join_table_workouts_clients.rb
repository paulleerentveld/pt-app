class CreateJoinTableWorkoutsClients < ActiveRecord::Migration[6.1]
  def change
    create_join_table :workouts, :clients do |t|
      # t.index [:workout_id, :client_id]
      # t.index [:client_id, :workout_id]
    end
  end
end
