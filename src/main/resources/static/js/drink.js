function addToCart(item){
    var item_name = item.childNodes[3].innerText;
    window.localStorage.setItem("drink", item_name);
    console.log(item_name);
}

function changeCategory(id){
    window.location.href = "./" + id;
}