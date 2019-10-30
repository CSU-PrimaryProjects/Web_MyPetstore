var xhr;
function checkUsername() {
    var username=document.getElementById('username').value;
    xhr=new XMLHttpRequest();
    xhr.onreadystatechange=process;
    xhr.open("GET","usernameIsExist?username="+username,true);
    xhr.send(null);
}
function process() {
    if(xhr.readyState==4)
    {
        if(xhr.status==200)
        {
            var responseInfo=xhr.responseText;
            var msg=document.getElementById('isExistInfo');
            if(responseInfo=='Exist')
            {
                msg.classList.add('errormsg');
                msg.innerText='用户名不可用';
            }else
            {
                msg.classList.add('okmasg');
                msg.innerText='用户名可用';
            }
        }
    }
}