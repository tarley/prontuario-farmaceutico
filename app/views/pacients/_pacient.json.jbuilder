json.extract! pacient, :id, :name, :place_attendence, :birth_date, :years_study, :genre, :marital_status, :phone, :address, :services_professional, :reason_meeting, :cpf, :created_at, :updated_at
json.url pacient_url(pacient, format: :json)
