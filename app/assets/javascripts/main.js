$(document).ready(function () {
  $("#form").validate({
    rules: {
      jobTitle: {
        required: true
      },
      company: {
        required: true
      },
      jobAddress: {
        required: true
      },
      city: {
        required: true
      },
      state: {
        required: true
      },
      zip: {
        required: true,
        number: true
      },
      salary: {
        required: true,
        number: true
      },
      hours: {
        required: true,
        number: true
      },
      education: {
        required: true
      },
      jobDescription: {
        required: true
      },
      insurance: {
        required: true
      },
      leaveHoliday: {
        required: true
      },
      educationTraining: {
        required: true
      },
      otherBenefits: {
        required: true
      },
      companyProfile: {
        required: true
      },
    }
  });
});