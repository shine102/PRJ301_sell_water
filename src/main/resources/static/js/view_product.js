function addToCart(id, name, price){
    var quantity = document.getElementById("drink_quantity").value;
    var string = localStorage.getItem('drinkList');
    if (string !== null){
        drinkList = JSON.parse(string);
        for(var i = 0; i < drinkList.length; i++){
            var flag = true;
            if(id === drinkList[i].id){
                flag = false;
                drinkList[i].quantity = Number(drinkList[i].quantity) + Number(quantity);
                break;
            }
        } 
        if (flag) drinkList.push({'id': id, 'name' : name, 'quantity' : quantity, 'price': price});
    } else {
        drinkList = [];
        drinkList.push({'id': id, 'name' : name, 'quantity' : quantity,  'price': price});
    }
    console.log(drinkList);
    localStorage.setItem('drinkList', JSON.stringify(drinkList));
    alert("Added to cart successfully!");
}