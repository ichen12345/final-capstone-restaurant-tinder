
async function checkUserName()
{
    // get the username that was typed
    const userName = $("#userName").val();
    const userNameAvailable = $("#userNameAvailable")

    // create the url to check if it's available
    const url = "/users/checkusername?userName=" + userName;

    // call the api
    await $.get(url, (isAvailable) => {
    //data is either true: username is available
    //            or false: username is not available
        userNameAvailable.val(isAvailable);

        return isAvailable;
    })

}

$(document).ready(function () {

    $.validator.addMethod('capitals', function(thing){
        return thing.match(/[A-Z]/);
    });
    $.validator.addMethod('cuisine', function(thing){
        const numberChecked= $('.checkboxes:checked').length;
        return numberChecked > 0;
    });
    $.validator.addMethod('unique', function(isAvailable){
        return isAvailable === 'true';
    });
    $("form").validate({

        rules : {
            userName : {
                required : true
            },
            userNameAvailable : {
                unique : true,
                required : true
            },
            password : {
                required : true,
                minlength: 8,
                capitals: true
            },
            confirmPassword : {
                required : true,
                equalTo : "#password"
            },
            cuisine : {
                cuisine : true
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
            userNameAvailable: {
                unique: "Username already taken"
            },
            cuisine : {
                cuisine : "Please select at least one cuisine type"
            }
            // userName: {
            //     unique: "Username already taken"
            // }
        },
        errorClass : "error"
    });
    $("#userName").blur(checkUserName);

});