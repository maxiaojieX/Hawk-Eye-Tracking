<!DOCTYPE html>
<html>
<body>
<p id="demo">点击这个按钮，获得您的坐标：</p>
<button onclick="begin()">试一下</button>



<p>Count numbers: <output id="result"></output></p>
<button onclick="startWorker()">开始工作</button>
<button onclick="stopWorker()">Stop Worker</button>

<p><strong>Note:</strong> Internet Explorer 9 and earlier versions do not support Web Workers.</p>

<script>

    var w;

    function startWorker() {
        if(typeof(Worker) !== "undefined") {
            if(typeof(w) == "undefined") {
                w = new Worker("demo_word.js");
            }
            w.onmessage = function(event) {
                document.getElementById("result").innerHTML = event.data;
            };
        } else {
            document.getElementById("result").innerHTML = "Sorry, your browser does not support Web Workers...";
        }
    }

    function stopWorker() {
        w.terminate();
        w = undefined;
    }



    //*********************


    var i = 1;
    var x=document.getElementById("demo");
    function getLocation()
    {
//        if (navigator.geolocation)
//        {
//            navigator.geolocation.getCurrentPosition(showPosition,showError);
//        }
//        else{x.innerHTML="Geolocation is not supported by this browser.";}
//        console.log("-----")

        x.innerHTML=i+"*****exe*******" + "<br />";
        i=i+1;
    }
    function showPosition(position)
    {
        x.innerHTML="Latitude: " + position.coords.latitude +
                "<br />Longitude: " + position.coords.longitude;
    }
    function showError(error)
    {
        switch(error.code)
        {
            case error.PERMISSION_DENIED:
                x.innerHTML="User denied the request for Geolocation."
                break;
            case error.POSITION_UNAVAILABLE:
                x.innerHTML="Location information is unavailable."
                break;
            case error.TIMEOUT:
                x.innerHTML="The request to get user location timed out."
                break;
            case error.UNKNOWN_ERROR:
                x.innerHTML="An unknown error occurred."
                break;
        }
    }

    function begin() {
        window.setInterval("getLocation()",3000);
    }

</script>
</body>
</html>
