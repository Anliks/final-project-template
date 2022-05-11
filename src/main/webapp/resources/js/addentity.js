
let inpname = document.querySelector('#name');
let inpvid = document.querySelector('#vid');
let inpcountry =document.querySelector('#country');
let inpdescr =document.querySelector('#descr');


document.querySelector('.form_btn').onclick = function (e) {
        e.preventDefault();
    saveinform(inpname.value, inpvid.value, inpcountry.value, inpdescr.value);

    };
function saveinform(inpname, inpvid,inpcountry,inpdescr){
    var localitem = {
       name: inpname,
        vid: inpvid,
        country: inpcountry,
        descr: inpdescr
    }
    //сохраняем в storage
    var local = JSON.stringify(localitem);
    localStorage.setItem(1, local);
    var ret = JSON.parse(localStorage.getItem(1));
    console.log(ret);


}

