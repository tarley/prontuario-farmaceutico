class Attendance < ActiveRecord::Base
  belongs_to :pacient
  
  validates_presence_of :general_screen, message: 'não pode deixar em branco'
  
end
