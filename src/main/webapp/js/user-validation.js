

// const userService = new UserService();
let userNameAvailableError;
let newUserButton;

function checkUserName()
{
    // get the username that was typed
    const userName = $("#userName").val();

    // create the url to check if it's available
    const url = "/users/checkusername?userName=" + userName;

    // call the api
    $.get(url, (data) => {

        //display error message if username is taken
        const isNotAvailable = !data;
        if(isNotAvailable){
            userNameAvailableError.show();
            return false;  //username entered by user is not unique
        }
        else {
            userNameAvailableError.hide();
            return true;

        }

    })

}


$(document).ready(function () {

    userNameAvailableError = $("#userNameAvailableError");
    newUserButton = $("#newUserButton");
    userNameAvailableError.hide();
    // newUserButton.prop("disabled", false);
    $.validator.addMethod('capitals', function(thing){
        return thing.match(/[A-Z]/);
    });
    // $.validator.addMethod('unique', function(){
    //     return checkUserName();
    // });
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
    // $("#userName").blur(checkUserName);

});