Array.prototype.unique = function(){
    this.sort();
    var res = [];
    var json = {};
    for (var i = 0; i < this.length; i++) {
        if(!json[this[i]]){
            res.push(this[i]);
            json[this[i]] = 1;
        }
    }
    return res;
}


var setClass = {
    hasClass: function(elements,cName){
        if(elements.className.match(new RegExp( "(\\s|^)" + cName + "(\\s|$)") ))
            return true;
        else
            return false;
    },
    addClass: function(elements,cName){
        if( !this.hasClass( elements,cName ) ){
            elements.className += " " + cName;
        };
    },
    removeClass: function(elements,cName){
        if( this.hasClass( elements,cName ) ){
            elements.className = elements.className.replace( new RegExp( "(\\s|^)" + cName + "(\\s|$)" )," " );
        }
    }
}

var Bind = function(This){
    return function(){
        This.init();
    }
}

function AutoComplete(keyword,auto,arr) {
    this.obj = document.getElementById(keyword);
    this.autoObj = document.getElementById(auto);
    this.search_value = "";
    this.index = -1;
    this.value_arr = arr;
}
AutoComplete.prototype = {

        init: function(){
            var This = this;
            setClass.removeClass(This.autoObj,"hidden");
            this.autoObj.style.left = this.obj.offsetLeft + "px";
            this.autoObj.style.top = this.obj.offsetTop + this.obj.offsetHeight + "px";
        },

        deleteDIV: function(){
            while(this.autoObj.hasChildNodes()){
                this.autoObj.removeChild(this.autoObj.firstChild);
            }
            setClass.addClass(this.autoObj,"hidden");
        },
        autoOnmouseover: function(index){
            if(index != this.index){
                setClass.addClass(this.autoObj.children[index],"on");
                setClass.removeClass(this.autoObj.children[this.index],"on");
                this.index = index;
            }
        },
        setValue: function(This){
            return function(){
                This.obj.value = this.seq;
                setClass.addClass(This.autoObj,"hidden");
            }
        },

        pressKey: function(event){
            var code = event.keyCode;
            var length = this.autoObj.children.length;
            if(code == 38){     //↑
                setClass.removeClass(this.autoObj.children[this.index],"on");
                this.index--;
                if(this.index < 0){
                    this.index = length - 1;
                }
                setClass.addClass(this.autoObj.children[this.index],"on");
                this.obj.value = this.autoObj.children[this.index].seq;
            }else if(code == 40){   //↓
                setClass.removeClass(this.autoObj.children[this.index],"on");
                this.index++;
                if(this.index > length-1){
                    this.index = 0;
                }
                setClass.addClass(this.autoObj.children[this.index],"on");
                this.obj.value = this.autoObj.children[this.index].seq;
            }else{          //回车
                this.obj.value = this.autoObj.children[this.index].seq;
                setClass.addClass(this.autoObj,"hidden");
                this.index = -1;
            }
        },

        start: function(event){
            event = event || window.event;
            var code = event.keyCode;
            var This = this;
            if(code != 13 && code != 38 && code != 40){
                this.init();
                this.deleteDIV();
                this.search_value = this.obj.value;
                var valueArr = this.value_arr.unique();
                if(this.obj.value.replace(/(^\s*)|(\s*$)/g,"") == ""){ return;}
                try{
                    var reg = new RegExp("("+ this.obj.value +")","i"); //输入"aaa" 则 reg = /(aaa)/i
                }catch(e){
                    alert(e.message);
                }
                var div_index = 0;  //记录匹配索引个数
                for (var i = 0; i < valueArr.length; i++) {
                    if(reg.test(valueArr[i])){
                        var div = document.createElement("div");
                        div.className = "auto_out";
                        div.seq = valueArr[i];
                        div.index = div_index;
                        div.innerHTML = valueArr[i].replace(reg,"<strong>$1</strong>");
                        this.autoObj.appendChild(div);
                        setClass.removeClass(this.autoObj,"hidden");
                        div_index++;
                        if(div_index == 1) {
                            setClass.addClass(this.autoObj.firstChild,"on");
                            this.index = 0;
                        }
                        div.onmouseover = function(){
                            This.autoOnmouseover(this.index);
                        }
                        div.onclick = this.setValue(This);
                    }
                }
            }else{
                this.pressKey(event);
            }
            window.onresize = Bind(This);
        }
    }

var xmlHttpRequest;
function createXMLHttpRequest()
{
    if (window.XMLHttpRequest)
    {
        xmlHttpRequest = new XMLHttpRequest();
    }
    else if (window.ActiveObject)
    {
        xmlHttpRequest = new ActiveObject("Msxml2.XMLHTTP");
    }
    else
    {
        xmlHttpRequest = new ActiveObject("Microsoft.XMLHTTP");
    }
}

var keyword = document.getElementById('keyword').value;
sendRequest("findResultServlet?keyword=" + keyword);

function sendRequest(url) {
    createXMLHttpRequest();
    xmlHttpRequest.open("GET", url, true);
    xmlHttpRequest.onreadystatechange = processResponse;
    xmlHttpRequest.send(null);
}

function processResponse() {
    if (xmlHttpRequest.readyState == 4) {
        if (xmlHttpRequest.status == 200) {
            var resp = xmlHttpRequest.responseText;

            var array = resp.split(",");
            var autoComplete = new AutoComplete("keyword","auto",array);
            document.getElementById("keyword").onkeyup = function(event){
                autoComplete.start(event);
            }


        }
    }
}