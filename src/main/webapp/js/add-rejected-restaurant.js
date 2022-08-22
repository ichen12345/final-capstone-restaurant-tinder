function addRejectedRestaurant(card) {
    const restaurantId = card.querySelector("#restaurantId").value;

    const url = "/rejectRestaurant?id="+restaurantId;
    const csrf_token = $('meta[name="csrf-token"]').attr('content');

    const body = {
        'CSRF_TOKEN': csrf_token
    };

    return $.post(url, body)
}