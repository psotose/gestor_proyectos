class Project < ApplicationRecord
    enum state: [:propuesta, :'en progreso', :terminado] 

    validates :name, presence: { message: "the project needs a name" }
    validates :description, presence:{ message: "you need to add a desciption" }
    validates :state, presence:true

end
