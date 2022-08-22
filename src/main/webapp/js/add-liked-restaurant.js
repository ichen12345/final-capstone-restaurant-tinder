  function addLikedRestaurant(card) {
    const restaurantIdControl = card.querySelector("#restaurantId");
    const restaurantId = restaurantIdControl.value;
    const restaurantName = card.querySelector("#restaurantName").innerText;
    const imageURL = card.querySelector("#imageURL").innerText;
    const priceValue = card.querySelector("#restaurantPrice").value; //price is returned by yelp api as a string of $
      const price = priceValue.length;
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


     return $.post(url, body)


}