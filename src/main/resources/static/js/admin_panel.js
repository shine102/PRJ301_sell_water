

function updateDrink(){
    var id = document.getElementById("edit-drink__drink-id").value;
    var name = document.getElementById("edit-drink__drink-name").value;
    var price = document.getElementById("edit-drink__drink-price").value;
    var imageLink = document.getElementById("edit-drink__drink-image-link").value;
    var description = document.getElementById("edit-drink__description").value;
    $(document).ready(function(){
        $.ajax({
            url: "/admin/panel/drink/" + id,
            type: "PUT",
            data: JSON.stringify({
                "drinkName": name,
                "price": price,
                "imageLink": imageLink,
                "description": description
            }),
            contentType: "application/json",
            success: function(data){
                alert("Modify drink success!");
                window.location.href = "/admin/panel/";
            }
        });
    });
}

function deleteDrink(){
    var id = document.getElementById("edit-drink__drink-id").value;
    $(document).ready(function(){
        $.ajax({
            url: "/admin/panel/drink/" + id,
            type: "DELETE",
            contentType: "application/json",
            success: function(data){
                alert("Delete drink success!");
                window.location.href = "/admin/panel/";
            }
        });
    });
}

function updateBlog(){
    var id = document.getElementById("edit-blog__blog-id").value;
    var title = document.getElementById("edit-blog__blog-title").value;
    var content = document.getElementById("edit-blog__blog-content").value;
    var imageLink = document.getElementById("edit-blog__blog-image").value;
    $(document).ready(function(){
        $.ajax({
            url: "/admin/panel/blog/" + id,
            type: "PUT",
            data: JSON.stringify({
                "blogTitle": title,
                "content": content,
                "imageLink": imageLink
            }),
            contentType: "application/json",
            success: function(data){
                alert("Modify blog success!");
                window.location.href = "/admin/panel/";
            }
        });
    });
}

function deleteBlog(){
    var id = document.getElementById("edit-blog__blog-id").value;
    $(document).ready(function(){
        $.ajax({
            url: "/admin/panel/blog/" + id,
            type: "DELETE",
            contentType: "application/json",
            success: function(data){
                alert("Delete blog success!");
                window.location.href = "/admin/panel/";
            }
        });
    });
}

