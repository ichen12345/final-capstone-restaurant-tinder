
$(document).ready(function() {

    //cuisine types
    if (currentUser.asianfusion === true
    ){
        $('#asianfusion').prop('checked', true);
    }
    if(currentUser.argentine === true
    ){
        $('#argentine').prop('checked', true);
    }
    if(currentUser.italian === true
    ){
        $('#italian').prop('checked', true);
    }
    if(currentUser.bbq === true
    ){
        $('#bbq').prop('checked', true);
    }
    if(currentUser.pizza === true
    ){
        $('#pizza').prop('checked', true);
    }
    if(currentUser.breakfast_brunch === true
    ){
        $('#breakfast_brunch').prop('checked', true);
    }
    if(currentUser.burgers === true
    ){
        $('#burgers').prop('checked', true);
    }
    if(currentUser.newamerican === true
    ){
        $('#newAmerican').prop('checked', true);
    }
    if(currentUser.comfortfood === true
    ){
        $('#comfortfood').prop('checked', true);
    }
    if(currentUser.french === true
    ){
        $('#french').prop('checked', true);
    }
    if(currentUser.indpak === true
    ){
        $('#indpak').prop('checked', true);
    }
    if(currentUser.japanese === true
    ){
        $('#japanese').prop('checked', true);
    }
    if(currentUser.mexican === true
    ){
        $('#mexican').prop('checked', true);
    }
    if(currentUser.vegan === true
    ){
        $('#vegan').prop('checked', true);
    }
    if(currentUser.vegetarian === true
    ){
        $('#vegetarian').prop('checked', true);
    }

    $('#rating').val(currentUser.rating);
    $('#price').val(currentUser.price);
    $('#zipcode').val(currentUser.zipcode);

    if(currentUser.delivery === true){
        $('#deliveryYes').prop('checked', true);
    } else {
        $('#deliveryNo').prop('checked', true);
    }



})



