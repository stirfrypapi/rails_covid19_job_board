json.extract! applicant, :id, :account_id, :profession, :first_name, :last_name, :school, :degree, :grad_date, :exp_position, :exp_description, :exp_from, :exp_to, :zipcode, :created_at, :updated_at
json.url applicant_url(applicant, format: :json)
