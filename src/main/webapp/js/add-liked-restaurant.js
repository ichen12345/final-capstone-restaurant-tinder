  function addLikedRestaurant(card) {
    const restaurantId = card.querySelector("#restaurantId").value;
    const restaurantName = card.querySelector("#restaurantName").value;
    const imageURL = card.querySelector("#restaurantImageUrl").value;
    const priceValue = card.querySelector("#restaurantPrice").value; //price is returned by yelp api as a string of $
      const price = priceValue.length;
    const rating = card.querySelector("#restaurantRating").value;
    const address = card.querySelector("#restaurantAddress").value;



    const url = "/likedRestaurants";
    const csrf_token = $('meta[name="csrf-token"]').attr('content');

    const body = {
        'CSRF_TOKEN' : csrf_token,
        'id': restaurantId,
        'name': restaurantName,
        'image_url': imageURL,
        'price': price,
        'rating': rating,
        'stringAddress': address
    };


     return $.post(url, body)


}