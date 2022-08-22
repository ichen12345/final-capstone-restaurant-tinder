  function addLikedRestaurant(card) {
    const restaurantId = card.querySelector("#restaurantId").value;
    const restaurantName = card.querySelector("#restaurantName").value;
    const imageURL = card.querySelector("#imageURL").value;
    const price = card.querySelector("#restaurantPrice").value.length; //price is returned by yelp api as a string of $
    const rating = card.querySelector("#restaurantRating").value;
    const address = card.querySelector("#restaurantAddress").value;



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