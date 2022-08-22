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
    $("form").validate({
        rules : {
            asianfusion : {
                cuisine : true
            }

        },
        messages : {
            asianfusion: {
                required: "Please select ...",
            }
        },
        errorClass : "error"
    });
});