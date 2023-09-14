const add = document.getElementById("add");
const fileList = document.getElementById("fileList");
const delets = document.getElementsByClassName("delets");

//-------------------------------
for(del of delets){
    del.addEventListener("click", function(){
        let num = this.getAttribute("data-delete-num");
        let check = confirm("삭제시 복구 불가");
        let board = $("#board").val();

        if(check){
            fetch("./fileDelete?"+board+"_file_num="+num, {method:"get"})
                .then((result)=>{return result.text()})
                .then((r)=>{ 
                    if(r.trim()=='1'){
                        console.log(this.previousSibling.previousSibling.remove());
                        this.remove();
                        count--;
                    }

                 })
        }
        
    });
}




let max=5;
let count=0;


if(delets != null){
    count=delets.length;
    //alert(count);
}

let idx=0;

$("#fileList").on("click", ".df", function(){
    $(this).parent().remove();
    count--;
})

//jquery로 변경
$("#add").click(function(){
    if(count>=max){
        alert("최대 5개만 가능");
        return;
    }
    count++;

    let r = '<div class="input-group mb-3" id="file'+idx+'">'
    r = r+'<input type="file" class="form-control" id="photos" name="photos">'
    r = r+ '<span class="df" data-id="file'+idx+'">X</span>'
    r= r+"</div>";
    idx++;

    $("#fileList").append(r);

});