$(document).on("keyup",".book_name",function(){
    // alert('hello world');
    var api=getUrl();
    var vv=$(this);
    var key=$(this).val();

    const method="POST";
    const url=api+"book-name";
    const data={
        query:key
    };
    ajaxSetup(function(data)
    {

        $(vv).autocomplete({
            source: data,
            select: function(e, ui) {
                // alert(ui.item.id);
                var bookId=ui.item.id;
                // alert(id);
                // window.location=api+"product/details/"+id+"/1";
            }
        });

    },method,url,data);


});

$(document).on("keyup",".publication_name",function(){
    // alert('hello world');
    var api=getUrl();
    var vv=$(this);
    var key=$(this).val();

    const method="POST";
    const url=api+"publication-name";
    const data={
        query:key
    };
    ajaxSetup(function(data)
    {

        $(vv).autocomplete({
            source: data,
            select: function(e, ui) {
                // alert(ui.item.id);
                var publication_name =ui.item.id;
                // var bookId=ui.item.id;
                // alert(id);
                // window.location=api+"product/details/"+id+"/1";
            }
        });

    },method,url,data);


});

$(document).on("keyup",".author_name",function(){
    // alert('hello world');
    var api=getUrl();
    var vv=$(this);
    var key=$(this).val();

    const method="POST";
    const url=api+"author-name";
    const data={
        query:key
    };
    ajaxSetup(function(data)
    {

        $(vv).autocomplete({
            source: data,
            select: function(e, ui) {
                // alert(ui.item.id);
                var author_name =ui.item.id;
                // alert(id);
                // window.location=api+"product/details/"+id+"/1";
            }
        });

    },method,url,data);


});

$(document).ready(function() {

    $("#display").click(function() {
         let bookname=$("#bookName").val();
        let publicname=$("#publicName").val();
        let catename=$("#cat").val();
        let subcatename=$("#subcat").val();
        let authorname=$("#authorName").val();
        var api=getUrl();
      $.ajax({
        type: "POST",
        url: api+"display-book",
        data:{bookname:bookname,publicname:publicname,catename:catename,subcatename:subcatename,authorname:authorname},
        dataType: "json",   //expect html to be returned
        success: function(response){
            // $("#responsecontainer").html(response);
            //alert(response);
        }

    });
});
});

 function getCategories(category_id){
        $.ajaxSetup({
            headers: {
                'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
            }
        });
        var api=getUrl();
        var category_id=$(category_id).val();
        var url = api + "get-categories/" + category_id;
        if(category_id){
            $.ajax({
                type : 'GET',
                url : url,
                data:{category_id:category_id},
                dataType : 'json',
                success : function(categories){
                    // console.log(categories);
                    var category_count = categories.cat_data.length;

                    var html = `<option value="">select</option>`;
                    for(var i = 0; i < category_count; i++){
                        html += `
                            <option value="${categories.cat_data[i].id}">${categories.cat_data[i].sub_cat_name}</option>
                        `;
                    }
                    $('#pb').html(html);
                }
            })
        }
    }
