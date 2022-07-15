function cancelOrder() {
    var orderId = document.getElementById('order-id-here').innerHTML;
    $.ajax({
        url: '/order/cancel?orderId=' + orderId,
        type: 'GET',
        success: function (data) {
            if(data === 'success'){
                alert('Order cancelled successfully');
                window.location.reload();
            } else {
                alert('Order cancel failed');
            }
        }
    });
}

function rating(id){
    var rating = document.getElementsByName('star');
    var ratingValue = 0;
    for (var i = 0; i < rating.length; i++) {
        if(rating[i].checked){
            ratingValue = 5 - i;
        }
    }

    var comment = document.getElementById('comment').value;
    if (comment == null){
        comment = "";
    }

    $.ajax({
    url: '/order/rating/' + id + '?rating=' + ratingValue + '&comment=' + comment,
    type: 'GET',
    success: function (data) {
        if(data === 'success'){
            alert('Rating submitted successfully');
            window.location.reload();    
        } else{
            alert('Rating failed');
        }
        
    }
    });

}