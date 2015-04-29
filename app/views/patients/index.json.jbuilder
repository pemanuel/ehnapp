json.array!(@patients) do |patient|
  json.extract! patient, :id, :lastname, :middlename, :firstname, :birthdate, :sex, :ethnicity, :uniqueid, :accountnumber, :medicaidid, :medicareid, :ssn
  json.url patient_url(patient, format: :json)
end
