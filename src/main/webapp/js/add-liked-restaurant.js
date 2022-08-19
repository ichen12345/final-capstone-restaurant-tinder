async function addLikedRestaurant(card) {
    const restaurantId = $("#");
    const restaurantName = $("#");
    const imageURL = $("#");
    const price = $("#").length; //price is return by yelp api as a string of $
    const rating = $("#");
    const address = $("#");



    const url = "/likedRestaurants";
    const csrf_token = $('meta[name="csrf-token"]').attr('content');

    const body = {
        'CSRF_TOKEN' : csrf_token,
        'restaurant_id': restaurantId,
        'restaurant_name': restaurantName,
        'image_url': imageURL,
        'price': price,
        'rating': rating,
        'address': address
    };


    $.post(url, body)


}