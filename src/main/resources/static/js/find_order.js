function search(){
    $(document).ready(function(){
        $.ajax({
            url: "/order/",
            type: "POST",
            data: JSON.stringify({
                "name": name,
                "phone": phone,
                "address": address,
                "orderDetail": orderDetail
            }),
            contentType: "application/json",
            success: function(data){
                alert("Order success!");
                removeOrder();
            }
        });
        }
    );
}