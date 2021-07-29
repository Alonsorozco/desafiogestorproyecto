class Project < ApplicationRecord
    validates :name, :description, :status, presence: true
end
