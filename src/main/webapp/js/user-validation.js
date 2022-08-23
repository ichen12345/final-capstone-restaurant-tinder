

async function checkUserName()
{
    // get the username that was typed
    const userName = $("#userName").val();

    // create the url to check if it's available
    const url = "/users/checkusername?userName=" + userName;

    // call the api
    return $.get(url, (isAvailable) => {
        const userNameAvailable = $("#userNameAvailable")
        userNameAvailable.val(isAvailable)
    })

}

const userNameAvailable = $("#userNameAvailable")

$(document).ready(function () {

    $.validator.addMethod('capitals', function(thing){
    return thing.match(/[A-Z]/);
    });

    $.validator.addMethod('unique', function(arg){
        let isAvail = arg;
        return isAvail === 'true';
    });

    $('#userName').keyup(checkUserName);


    $("form").validate({

        rules : {
            userName : {
                required : true,
                unique: true

            },
            password : {
                required : true,
                minlength: 8,
                capitals: true,
            },
            confirmPassword : {
                required : true,
                equalTo : "#password"
            }

        },
        messages : {
            password: {
                minlength: "Password too short, make it at least 8 characters",
                capitals: "Field must contain a capital letter",
            },
            confirmPassword : {
                equalTo : "Passwords do not match"
            },
            userName: {
                unique: "Username already taken"
            }
        },
        errorClass : "error"
    });

});