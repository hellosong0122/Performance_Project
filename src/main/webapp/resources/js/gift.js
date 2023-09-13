let count = 1;

let price = $('#p_Price').text();
console.log(price);
console.log((count * 1));
$("#p_Total").text((count * 1) * price);
console.log($("#p_Total").text((count * 1) * price));
$('#h_p_Price').attr('value', price);
console.log($('#h_p_Price').attr('value', price));

$("#p_Price").text($("#h_p_Price").val()+"원");

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


