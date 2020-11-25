$(document).ready(function () {

    function character(){
        var username = $(".username").val()
        var regEx = /^[A-Z0-9][A-Z0-9._%+-]{0,63}@(?:[A-Z0-9-]{1,63}\.){1,125}[A-Z]{2,63}$/;
        var uservalid = regEx.test(username);

        if (!uservalid) {
            $('.username').after('<span class="error">Enter a valid emais</span>');
        }



    }
    character()

    jQuery.validator.setDefaults({
        debug: true,
        success: "valid"
    });

    $('#formMahasiswa').validate({
        rules: {
            username: {
                minlength: 4,
                maxlength: 13,
                required: true,
            },
            password: {
                required: true,
                maxlength: 13,
                minlength: 4,
            }
        },
        messages: {
            username:{
                minlength: "<i class='text-danger fa fa-times'></i> Please enter at least 4 characters",
                required: "<i class='text-danger fa fa-times'></i>",
                maxlength: "<i class='text-danger fa fa-times'></i> No more than 15 characters.",
            },
            password:{
                minlength: "<i class='text-danger fa fa-times'></i> Please enter at least 4 characters",
                required: "<i class='text-danger fa fa-times'></i>",
                maxlength: "<i class='text-danger fa fa-times'></i> No more than 15 characters.",
            }
        },
        success: function (element) {
            element.html('<i class="text-primary fa fa-check"></i>').addClass('valid')
                .closest('.messageForm').removeClass('error').addClass('success');
        }
    });

    $('#formAdmin').validate({
        rules: {
            username: {
                minlength: 4,
                required: true,
                maxlength: 13,

            },
            password: {
                required: true,
                minlength: 4,
                maxlength: 13,

            }
        },
        username:{
            minlength: "<i class='text-danger fa fa-times'></i> Please enter at least 4 characters",
            required: "<i class='text-danger fa fa-times'></i>",
            maxlength: "<i class='text-danger fa fa-times'></i> No more than 15 characters.",
        },
        password:{
            minlength: "<i class='text-danger fa fa-times'></i> Please enter at least 4 characters",
            required: "<i class='text-danger fa fa-times'></i>",
            maxlength: "<i class='text-danger fa fa-times'></i> No more than 15 characters.",
        },
        highlight: function (element) {
            $(element).closest('#form-group').removeClass('success').addClass('error');
        },
        success: function (element) {
            element.html('<i class="text-primary fa fa-check"></i>').addClass('valid')
                .closest('.messageForm').removeClass('error').addClass('success');
        }
    });
    $('#fromLogin').validate({
        rules: {
            username: {
                minlength: 4,
                required: true,
                maxlength: 13,

            },
            password: {
                required: true,
                minlength: 4,
                maxlength: 13,

            }
        },
        username:{
            minlength: "<i class='text-danger fa fa-times'></i> Please enter at least 4 characters",
            required: "<i class='text-danger fa fa-times'></i>",
            maxlength: "<i class='text-danger fa fa-times'></i> No more than 15 characters.",
        },
        password:{
            minlength: "<i class='text-danger fa fa-times'></i> Please enter at least 4 characters",
            required: "<i class='text-danger fa fa-times'></i>",
            maxlength: "<i class='text-danger fa fa-times'></i> No more than 15 characters.",
        },
        highlight: function (element) {
            $(element).closest('#form-group').removeClass('success').addClass('error');
        },
        success: function (element) {
            element.html('<i class="text-primary fa fa-check"></i>').addClass('valid')
                .closest('.messageForm').removeClass('error').addClass('success');
        }
    });

});