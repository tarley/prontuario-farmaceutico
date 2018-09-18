class Pacient < ActiveRecord::Base
    belongs_to :profession
    belongs_to :service_access
    belongs_to :ub
end
