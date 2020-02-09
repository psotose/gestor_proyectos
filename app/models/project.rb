class Project < ApplicationRecord
    enum states: [:propuesta, :en_progreso, :terminado] 

    validates :name, presence: { message: "the project needs a name" }
    validates :description, presence:{ message: "you need to add a desciption" }
    validates :state, presence:true

end
