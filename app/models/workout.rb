class Workout < ApplicationRecord
    has_many :exercise_workouts
    has_many :client_workouts
    has_many :exercises, through: :exercise_workouts
    has_many :clients, through: :client_workouts
    

    
end
