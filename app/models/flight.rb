class Flight < ActiveRecord::Base
  has_many :seats, dependent: :destroy
end
