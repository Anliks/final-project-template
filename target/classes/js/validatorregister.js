$(document).ready(function(){
    $("#form_signup").validate({
        rules: {
            log: {
                required: true,
                minlength: 3
            },
            email: {
                required: true,
                email: true
            },
            pass: {
              required: true,
                minlength: 3
            },
            passconfirm: {
                required: true,
                minlength: 3,
                equalTo: "#pas"

            }
        }

    })
})

