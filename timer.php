<!DOCTYPE HTML>
<html>
<head>
            <meta charset="utf-8">
            <meta name="viewport" content="width=device-width, initial-scale=1">
            <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
            <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
            <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style>
p {
    font-family: 'Courier New';
    text-align: center;
    font-size: 60px;
    font-weight: bold;
    margin-top:0px;
}
</style>
</head>
<body>
<div class="container">
    <div id="restante" class="progress-bar progress-bar-success" role="progressbar" style="width:100%">
      70%
    </div>
</div>
<br>
<div class="container">
  <div class="jumbotron">
<p id="demo"></p>
<p>Ahora...</p>
<p id="horaactual"></p>

<p>Hora Inicio</p>
<p id="inicia"></p>

<p>Finaliza...</p>
<p id="horafinal"></p>
<p>100%</p>
<p id="cienporc"></p>
<p>porcentaje restante</p>
<p id="rest"></p>
<p>porcentaje resu</p>
<p id="restea"></p>


</div>
</div>

<script>
// Set the date we're counting down to
var countDownDate = new Date("May 29, 2018 15:30:00").getTime();
var inicio = new Date("May 29, 2018 13:15:00").getTime();

// Update the count down every 1 second
var x = setInterval(function() {

                // Get todays date and time
                var now = new Date().getTime();
                var ahora = new Date();
                var final = new Date(countDownDate);
                var ini = new Date(inicio);
                // Find the distance between now an the count down date
                var distance = countDownDate - now;
             
                //porcentajes
                var cien = final - inicio;
                var restante = distance / cien;
                var resu = parseFloat(restante).toFixed(2)*100;
                
                // Time calculations for days, hours, minutes and seconds
                var days = Math.floor(distance / (1000 * 60 * 60 * 24));
                var hours = Math.floor((distance % (1000 * 60 * 60 * 24)) / (1000 * 60 * 60));
                var minutes = Math.floor((distance % (1000 * 60 * 60)) / (1000 * 60));
                var seconds = Math.floor((distance % (1000 * 60)) / 1000);
                
                // Output the result in an element with id="demo"
                document.getElementById("demo").innerHTML = days + "d " + hours + "h "
                + minutes + "m " + seconds + "s ";
                
                // If the count down is over, write some text 
                if (distance < 0) {
                    clearInterval(x);
                    document.getElementById("demo").innerHTML = "EXPIRED";
                }
                document.getElementById("horaactual").innerHTML = ahora;
                document.getElementById("horafinal").innerHTML = final.toString();
                document.getElementById("restante").innerHTML =  resu  + " % ";
                $('#restante').css('width', resu + '%');
                document.getElementById("cienporc").innerHTML = cien;
                 document.getElementById("rest").innerHTML = distance;
                  document.getElementById("restea").innerHTML = resu;
                  document.getElementById("inicia").innerHTML = ini.toString();
}, 1000);
</script>

</body>

</html>
