require 'test_helper'

class ReferralsControllerTest < ActionController::TestCase
  setup do
    @referral = referrals(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:referrals)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create referral" do
    assert_difference('Referral.count') do
      post :create, referral: { address1: @referral.address1, address2: @referral.address2, chwAssigned: @referral.chwAssigned, city: @referral.city, emergencyContactName: @referral.emergencyContactName, emergencyContactPhone: @referral.emergencyContactPhone, emergencyContactRelationship: @referral.emergencyContactRelationship, endTime: @referral.endTime, goals: @referral.goals, homePhone: @referral.homePhone, ifYes: @referral.ifYes, mobilePhone: @referral.mobilePhone, nextVistDate: @referral.nextVistDate, notes: @referral.notes, otherMedicalConcerns: @referral.otherMedicalConcerns, patientAge: @referral.patientAge, patientDOB: @referral.patientDOB, patientEthnicity: @referral.patientEthnicity, patientFirstName: @referral.patientFirstName, patientLastName: @referral.patientLastName, patientMiddleName: @referral.patientMiddleName, patientRace: @referral.patientRace, patientSSN: @referral.patientSSN, primaryDiag: @referral.primaryDiag, reasonForCHWReferral: @referral.reasonForCHWReferral, referralDate: @referral.referralDate, referringCHW: @referral.referringCHW, referringOrgAgency: @referral.referringOrgAgency, referringProvider: @referral.referringProvider, sexFemale: @referral.sexFemale, sexMale: @referral.sexMale, startTime: @referral.startTime, state: @referral.state, takingMeds: @referral.takingMeds, takingMedsValue: @referral.takingMedsValue, visitType: @referral.visitType, vistDate: @referral.vistDate, workPhone: @referral.workPhone, zip: @referral.zip }
    end

    assert_redirected_to referral_path(assigns(:referral))
  end

  test "should show referral" do
    get :show, id: @referral
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @referral
    assert_response :success
  end

  test "should update referral" do
    patch :update, id: @referral, referral: { address1: @referral.address1, address2: @referral.address2, chwAssigned: @referral.chwAssigned, city: @referral.city, emergencyContactName: @referral.emergencyContactName, emergencyContactPhone: @referral.emergencyContactPhone, emergencyContactRelationship: @referral.emergencyContactRelationship, endTime: @referral.endTime, goals: @referral.goals, homePhone: @referral.homePhone, ifYes: @referral.ifYes, mobilePhone: @referral.mobilePhone, nextVistDate: @referral.nextVistDate, notes: @referral.notes, otherMedicalConcerns: @referral.otherMedicalConcerns, patientAge: @referral.patientAge, patientDOB: @referral.patientDOB, patientEthnicity: @referral.patientEthnicity, patientFirstName: @referral.patientFirstName, patientLastName: @referral.patientLastName, patientMiddleName: @referral.patientMiddleName, patientRace: @referral.patientRace, patientSSN: @referral.patientSSN, primaryDiag: @referral.primaryDiag, reasonForCHWReferral: @referral.reasonForCHWReferral, referralDate: @referral.referralDate, referringCHW: @referral.referringCHW, referringOrgAgency: @referral.referringOrgAgency, referringProvider: @referral.referringProvider, sexFemale: @referral.sexFemale, sexMale: @referral.sexMale, startTime: @referral.startTime, state: @referral.state, takingMeds: @referral.takingMeds, takingMedsValue: @referral.takingMedsValue, visitType: @referral.visitType, vistDate: @referral.vistDate, workPhone: @referral.workPhone, zip: @referral.zip }
    assert_redirected_to referral_path(assigns(:referral))
  end

  test "should destroy referral" do
    assert_difference('Referral.count', -1) do
      delete :destroy, id: @referral
    end

    assert_redirected_to referrals_path
  end
end
