(function() {

    window.onload = function() {
  
    function getQueryVariable(variable) {		
      var vars = query.split("&");
      for ( var i = 0; i < vars.length; i++) {
          var pair = vars[i].split("=");
          if (pair[0] == variable) {
              return pair[1];
          }
      }
      return (false);
    }
   
    var map = L.map( 'map', {
            center: [14.628434,-90.522713],
            minZoom: 2, zoom: 13
    });
    
     L.tileLayer( 'http://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png', {
            attribution: '&copy; <a href="https://www.openstreetmap.org/copyright">OpenStreetMap</a>',
             subdomains: ['a','b','c'],
             maxZoom: 18
        }).addTo( map );
   
     var markersList = [];
  
      var query = window.location.search.substring(1);
      query =  decodeURIComponent(query);
      var appHome = location.protocol + '//' + location.host + '/' + location.pathname.split('/')[1];
    
      var ruta = parseInt(getQueryVariable("ruta"));
  
      if (isNaN(ruta))
             { ruta = 0 };
   
       var requestP = $.ajax({type: "GET",contentType: 'application/json',
                             data: {ruta : ruta},
                             url: appHome + "/ws/mapa/ruta/direcciones" 
                            });
       requestP.done(function(result){
          
       if (result.status == 0) {		   		  	   		  		
        var latlongPoligonos = [];

       for (var i = 0; i < result.data.length; i++) {  
            var d = result.data[i];
            var latlong = [];

                var latitud  =  parseFloat(d['latit']);
                var longitud = parseFloat(d['longit']);
                var content  = d['title'];

            latlong.push(latitud);
            latlong.push(longitud);
            latlongPoligonos.push(latlong);

            var iconcolor;

            var claseIcono = d['pinColor'];

            switch (claseIcono) {
                case 'blue':
                    iconcolor = '5680FC';				
                    break;
                case 'gray' :
                    iconcolor = 'A8A8A8 ';
                    break;			
                case 'orange':
                    iconcolor = 'EF9D3F';
                    break;
                case 'yellow':
                    iconcolor = 'FCF356';
                    break;
                case 'purple':
                    iconcolor = '7D54FC';
                    break;
                case 'pink':
                    iconcolor = 'E14E9D';
                    break;
                case 'brown':
                    iconcolor = '9E7151';
                    break;				
                default: 
                    iconcolor = 'FC6355';
                    claseIcono = "yellow";				
                    break;
                }
              //  var icon = 'http://thydzik.com/thydzikGoogleMap/markerlink.php?text='+d['pinChar'];
              var icon = 'http://chart.googleapis.com/chart?cht=mm&chs=20x34&chco='+ iconcolor+ ','+ iconcolor +',ffffff&ext=.png';
   
                var myIcon = L.icon({
                            iconUrl: icon,
                            iconSize: [29, 24],
                            iconAnchor: [9, 21],
                            popupAnchor: [0, -14], 
                });

                L.marker(latlong, {icon: myIcon}).bindPopup(content).addTo(map);                            
            } // end for

                // Add the Polygon
               L.polygon(latlongPoligonos).addTo(map);
          }; //end if
              
          requestP.fail(function(jqXHR, textStatus) {
                alert( "Request failed: " + textStatus );
          });
          
          requestP.complete(function() {		
              mapElement.style.visibility="visible";
          });
            
      });    
    };       	
  })();
  