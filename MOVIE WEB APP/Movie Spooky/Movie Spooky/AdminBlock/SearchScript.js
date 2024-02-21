function searchme() {
    
    var count = 0;
    var search_value = document.getElementById("searchbarf").value;
    search_value = search_value.toLowerCase();


    var table = document.getElementById("tablebody");

    var tr = table.getElementsByTagName("tr");
    var td;


    for (var i = 0; i < tr.length; i++) {
        td = tr[i].getElementsByTagName("td")[0].textContent;
        td = td.toLowerCase();

        if (td.indexOf(search_value) > -1) {
            tr[i].style.display = "";
            
        }

        else {
            count++;
            tr[i].style.display = "none";
        }
    }

    if (count == tr.length) {
        tr[i].style.display = "No";
    }

}