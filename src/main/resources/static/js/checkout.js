function removeOrder(){
    localStorage.clear();
    window.location.href = "/drink";
}

function fetchList(){
    var list = localStorage.getItem("drinkList");
    if(list != null){
        list = JSON.parse(list);
        var html = "";
        for(var i = 0; i < list.length; i++){
            html += "<div class='tch-order-card tch-order-card--border d-flex align-items-center justify-content-between'><div class='tch-order-card__left d-flex'><span class='tch-order-card__icon d-flex align-items-center'><i class='fa-solid fa-beer-mug-empty'></i></span><div class='tch-order-card__content'><h5 class='tch-order-card__title mb-0'>" + list[i].quantity + " x " + list[i].name + "</h5><p class='tch-order-delete-item' onclick='removeDrink()'>Delete</p></div></div><div class='tch-order-card__right'><p class='tch-order-card__price mb-0'>" + list[i].price + " đ</p></div></div>";
        }
        document.getElementById("order-items-container").innerHTML = html;
    }
}

function sendOrder(){

}

function removeDrink(){
    
}