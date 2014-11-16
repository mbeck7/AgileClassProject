$(document).ready(function () {
  $("#form").validate({
    rules: {
      jobTitle: {
        required: true
      },
      jobAddress: {
        required: true
      },
    }
  });
});