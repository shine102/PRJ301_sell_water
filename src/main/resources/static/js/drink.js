function addToCart(item){
    var item_name = item.childNodes[3].innerText;
    window.localStorage.setItem("drink", item_name);
    
}