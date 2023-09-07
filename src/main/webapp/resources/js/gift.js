let count = 1;

let price = $('#p_Price').text();
$("#p_Total").text((count * 1) * price);
$('#h_p_Price').attr('value', price);


function increment() {
    
    count++;
    console.log(count);
    let total = (count * 1) * price;

    $("#counter").text(count);

    $("#p_Total").text((count * 1) * price);
    $('#h_p_Total').attr('value', total);

    let totalvalue = $('#h_p_Total').attr('value');
    console.log(totalvalue);

    $("#p_Counter").html(count);
    $('#h_p_Counter').attr('value', count);


    return false;
}


function decrement() {

    console.log("minus click");

    if (count > 0) {
        count--;
        console.log(count);
        let total = (count * 1) * price;

        $("#counter").text(count)

        $("#p_Total").text((count * 1) * price);
        $('#h_p_Total').attr('value', total);
        
        let totalvalue = $('#h_p_Total').attr('value');
        console.log(totalvalue);

        $("#p_Counter").html(count);
        $('#h_p_Counter').attr('value', count);
    }

    return false;
}


