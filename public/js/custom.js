$().ready(function() {
    $(".deletePost").click(function() {
        if (confirm('Удалить эту запись?')) {
            var id = this.parentNode.id.substr(8);
            $.get("blog/deletepost/"+parseInt(id))
                .success(function() {
                    $("#postRec_"+id).html("");
                    alert('Запись была удалена!');
                })
                .error(function() { alert("Ошибка выполнения"); })
        }
    });
});
