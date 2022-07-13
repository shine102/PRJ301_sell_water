function addToCart(id, name, price){
    var string = localStorage.getItem('drinkList');
    console.log(string);
    var drinkList;
    if (string !== null){
        drinkList = JSON.parse(string);
        for(var i = 0; i < drinkList.length; i++){
            var flag = true;
            if(id === drinkList[i].id){
                flag = false;
                drinkList[i].quantity ++;
                break;
            }
        } 
        if (flag) drinkList.push({'id': id, 'name' : name, 'quantity' : 1,  'price': price});
    } else {
        drinkList = [];
        drinkList.push({'id': id, 'name' : name, 'quantity' : 1,  'price': price});
    }
    console.log(drinkList);
    localStorage.setItem('drinkList', JSON.stringify(drinkList));
}

function changeCategory(id){
    window.location.href = "./" + id;
}

function goToDrink(id){
    window.location.href = "/drink/" + id;
}