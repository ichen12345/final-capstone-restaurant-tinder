document.addEventListener('DOMContentLoaded',()=>{
// $(document).ready(function(){
    // var checkboxes = $('.checkboxes');
    // checkboxes.change(function(){
    //     if($('.checkboxes:checked').length>0) {
    //         $("#asianfusion").removeAttr('required');
    //     } else {
    //         $("#asianfusion").attr('required', 'required');
    //     }
    // });
    $.validator.addMethod('cuisine', function(thing){
        const numberChecked= $('.checkboxes:checked').length;
        return numberChecked > 0;
    });

    $("form[name='profile-form']").validate({
        rules : {
            cuisine : {
                cuisine : true
            }

        },
        messages : {
            cuisine: {
                cuisine: "At least 1 cuisine is required.",
            }
        },
        errorClass : "error"
    });

    console.log("content loaded")
});