function removeOrder(){
    localStorage.clear();
    window.location.href = "/category/1";
}

function fetchList(){
    var list = localStorage.getItem("drinkList");
    var amount = 0;
    if(list !== null){
        list = JSON.parse(list);
        var html = "";
        for(var i = 0; i < list.length; i++){
            html += "<div class='tch-order-card tch-order-card--border d-flex align-items-center justify-content-between'><div class='tch-order-card__left d-flex'><span class='tch-order-card__icon d-flex align-items-center'><i class='fa-solid fa-beer-mug-empty'></i></span><div class='tch-order-card__content'><span class='id' style='visibility:hidden;'>" + list[i].id + "</span><h5 class='tch-order-card__title mb-0'>" + list[i].quantity + " x " + list[i].name + "</h5><p class='tch-order-delete-item' onclick='removeDrink(this)'>Delete</p></div></div><div class='tch-order-card__right'><p class='tch-order-card__price mb-0'>" + list[i].price + " đ</p></div></div>";
            amount = amount + list[i].price * list[i].quantity;
        }
        document.getElementById("order-items-container").innerHTML = html;
        document.getElementById("amount-money").innerHTML = amount + " đ";
    } else {
        window.location.href = "/category/1";
    }
}

function sendOrder(){
    var name = document.getElementById("enter_name").value;
    var phone = document.getElementById("enter_phone").value;
    var address = document.getElementById("enter_address").value;

    var drinkList = localStorage.getItem("drinkList");
    var orderDetail = JSON.parse(drinkList);
    $(document).ready(function(){
        $.ajax({
            url: "/order/create",
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

function removeDrink(item){
    var list = localStorage.getItem("drinkList");
    list = JSON.parse(list);
    var id = item.parentNode.parentNode.getElementsByClassName("id")[0].innerHTML;
    console.log(list[0].id);
    console.log(id);
    for (var i = 0; i < list.length; i++){
        if(list[i].id == id){
            list.splice(i, 1);
            list = JSON.stringify(list);
            console.log(list);
            localStorage.setItem("drinkList", list);
            fetchList();
            break;
        }
    }
}