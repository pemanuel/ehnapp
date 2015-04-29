json.array!(@referrals) do |referral|
  json.extract! referral, :id, :vistDate, :startTime, :endTime, :visitType, :patientLastName, :patientFirstName, :patientMiddleName, :address1, :address2, :city, :state, :zip, :homePhone, :mobilePhone, :workPhone, :patientSSN, :patientDOB, :patientAge, :patientRace, :patientEthnicity, :sexMale, :sexFemale, :referralDate, :emergencyContactName, :emergencyContactRelationship, :emergencyContactPhone, :referringProvider, :referringOrgAgency, :referringCHW, :primaryDiag, :notes, :goals, :reasonForCHWReferral, :takingMeds, :takingMedsValue, :otherMedicalConcerns, :ifYes, :chwAssigned, :nextVistDate
  json.url referral_url(referral, format: :json)
end
