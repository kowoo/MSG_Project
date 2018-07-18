	$(function() {
		$('#calendar').fullCalendar({
			  defaultView: 'month',
			  height : 330,
			  
		});
		
		var x, y;
		var getLocation = function(){
			return new Promise(function (resolve, reject){
				if(navigator.geolocation){
					navigator.geolocation.getCurrentPosition(function(position){
						x = position.coords.latitude;
						y = position.coords.longitude;
						resolve({posX : x, posY : y });
					});
				}
			});
			
			
		};

		function doWeather(){
			getLocation().then(function (result){
				$.ajax({
					url : "weather/getWeather?posX="+x+"&posY="+y,
					dataType : "text",
					method : "post",
					success : function(weather){
						var weather_Info = weather.split(",");
						var city = weather_Info[0];
						var status = weather_Info[1];	// Clouds, Haze ,
						var degree = parseInt(weather_Info[2]);

						var box = $("#imgBox");
						var path = $("#path").val();
						
						if(status == "Rain"){
							$("<img src = '"+path+"/img/rainy.png'>").appendTo(box);
						}else if(status == "Sunny"){
							$("<img src = '"+path+"/img/sunny.PNG'>").appendTo(box);
						}else if(status == "Haze"){
							$("<img src = '"+path+"/img/Haze.png'>").appendTo(box);
						}else if(status == "Clouds"){
							$("<img src = '"+path+"/img/cloudy.png'>").appendTo(box);
						}

						$("#place").text(city);
						$("#temp").text(degree+"˚");
					}
				});
			});
		};
		doWeather();
	});