var xmlHttpRequest;
function createXMLHttpRequest(){
    if (window.XMLHttpRequest)
    {
        xmlHttpRequest = new XMLHttpRequest();
    }
    else if (window.ActiveObject)
    {
        xmlHttpRequest = new ActiveObject("Msxml2.XMLHTTP");
    }
    else //IE6及以下版本IE浏览器
    {
        xmlHttpRequest = new ActiveObject("Microsoft.XMLHTTP");
    }
}
function usernameIsExist() {
    var username = document.getElementById('username').value;
    sendRequest("usernameIsExist?username=" + username);
}
function sendRequest(url) {
    createXMLHttpRequest();
    xmlHttpRequest.open("GET", url, true);
    xmlHttpRequest.onreadystatechange = processResponse;
    xmlHttpRequest.send(null);
}
function processResponse() {
    if (xmlHttpRequest.readyState == 4) {
        if (xmlHttpRequest.status == 200) {
            var responseInfo = xmlHttpRequest.responseXML.getElementsByTagName("msg")[0].firstChild.data;
            var div1 = document.getElementById('usernameMsg');
            if (responseInfo == "Exist") {
                div1.innerHTML = "<font color='red'>The user name already exists！</font>";
            } else {
                div1.innerHTML = "<font color='green'>User name available</font>";
            }
        }
    }
}
