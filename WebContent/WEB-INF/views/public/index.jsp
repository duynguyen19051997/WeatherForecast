<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<div class="hero" data-bg-image="${pageContext.request.contextPath}/publicUrl/images/featured-image-3.jpg">
				<div class="container">
					<form id="formsearch" method="post" action="" class="find-location">
						<input id="search" name="search"  type="text" placeholder="Find your location...">
						<input type="submit" value="Find">
					</form>
					<script type="text/javascript">
						$(document).ready(function(){
			        		$('#formsearch').validate({
			        			rules:{
			        				search:{
			        					required:true
			        				}
			        			},
			        			messages:{
			        				search:{
			        					required:'Not empty, please !'
			        				}
			        			},
			        		});
			        	});
					</script>		
				</div>
			</div>
			<div class="forecast-table">
				<div class="container">
					<div class="forecast-container">
						  <ul class="nav nav-tabs week">
						    <li class="active tab-week week-day"><a data-toggle="tab" href="#day-1">Monday</a></li>
						    <li class="tab-week week-day"><a data-toggle="tab" href="#day-2">Tuesday</a></li>
						    <li class="tab-week week-day"><a data-toggle="tab" href="#day-3">Wednesday</a></li>
						    <li class="tab-week week-day"><a data-toggle="tab" href="#day-4">Thursday</a></li>
						    <li class="tab-week week-day"><a data-toggle="tab" href="#day-5">Friday</a></li>
						    <li class="tab-week week-day"><a data-toggle="tab" href="#day-6">Saturday</a></li>
						    <li class="tab-week week-day"><a data-toggle="tab" href="#day-7">Sunday</a></li>
						  </ul>
						
						  <div class="tab-content">
						    <div id="day-1" class="today forecast tab-pane active">
								<div class="forecast-header">
									<div class="city">New York, USA</div>
									<div class="day">
										<div class="forecast-icon">
											<img src="${pageContext.request.contextPath}/publicUrl/images/icons/icon-1.svg" alt="" width=90>
										</div>
									</div>
									<div class="date">6 Oct 2019</div>
								</div> <!-- .forecast-header -->
								<div class="forecast-content">
									<div class="location">Thunderstorm with light rain</div>
									<div class="degree">
										<div class="num">23<sup>o</sup>C</div>
										<div class="forecast-icon">
											<img src="${pageContext.request.contextPath}/publicUrl/images/icons/icon-1.svg" alt="" width=90>
										</div>	
									</div>
									<div class="degree row">
										<span class="col-sm-5"><img src="${pageContext.request.contextPath}/publicUrl/images/humidity.png" title="Humidity" alt="">20%</span>
										<span class="col-sm-5"><img src="${pageContext.request.contextPath}/publicUrl/images/uv-protection.png" title="UV-Protection">2</span>										
										<span class="col-sm-5"><img src="${pageContext.request.contextPath}/publicUrl/images/pressure.png" title="Pressure">20mb</span>
										<span class="col-sm-5"><img src="${pageContext.request.contextPath}/publicUrl/images/vision.png" title="Visibility ">18km</span>
										<span class="col-sm-5"><img src="${pageContext.request.contextPath}/publicUrl/images/wind.png" title="Wind Speed">18m/s</span>
										<span class="col-sm-5"><img src="${pageContext.request.contextPath}/publicUrl/images/compass.png" title="Wind Direction">NE</span>
									</div>
									<div class="degree row">
										<span class="col-sm-5"><img src="${pageContext.request.contextPath}/publicUrl/images/cloud.png" title="Average total cloud coverage">25%</span>
										<span class="col-sm-5"><img src="${pageContext.request.contextPath}/publicUrl/images/sunrise.png" title="Sunrise">05:00</span>
										<span class="col-sm-5"><img src="${pageContext.request.contextPath}/publicUrl/images/water.png" title="Average sea level pressure">1017mb</span>
										<span class="col-sm-5"><img src="${pageContext.request.contextPath}/publicUrl/images/sunset.png" title="Sunset">17:00</span>
										<span class="col-sm-5"><img src="${pageContext.request.contextPath}/publicUrl/images/snow.png" title="Accumulated snowfall">0mm</span>
										<span class="col-sm-5"><img src="${pageContext.request.contextPath}/publicUrl/images/moonrise.png" title="Moonrise">18:00</span>
										<span class="col-sm-5"><img src="${pageContext.request.contextPath}/publicUrl/images/snow-depth.png" title="Snow Depth">0mm</span>
										<span class="col-sm-5"><img src="${pageContext.request.contextPath}/publicUrl/images/moonset.png" title="Moonset">04:00</span>
									</div>
									<div class="clear"></div>
									<div class="location row">
										<span class="col-sm-5">Minimum Temperature: 19<sup>o</sup>C</span>
										<span class="col-sm-5">Low-level (~0-3km AGL) cloud coverage: 25%</span>
										<span class="col-sm-5">Maximum Temperature: 25<sup>o</sup>C</span>
										<span class="col-sm-5">High-level (>5km AGL) cloud coverage: 100%</span>
										<span class="col-sm-5">"Feels Like" temperature at min_temp time: 20<sup>o</sup>C</span>
										<span class="col-sm-5">Accumulated snow fall: 0mm</span>
										<span class="col-sm-5">"Feels Like" temperature at max_temp time: 23<sup>o</sup>C</span>
										<span class="col-sm-5">Accumulated liquid equivalent precipitation: 20mm</span>
									</div>
								</div>
							</div>
							<div id="day-2" class="forecast today tab-pane">
								<div class="forecast-header">
									<div class="city">New York, USA</div>
									<div class="day">
										<div class="forecast-icon">
											<img src="${pageContext.request.contextPath}/publicUrl/images/icons/icon-1.svg" alt="" width=90>
										</div>
									</div>
									<div class="date">7 Oct 2019</div>
								</div> <!-- .forecast-header -->
								<div class="forecast-content">
									<div class="location">Thunderstorm with light rain</div>
									<div class="degree">
										<div class="num">23<sup>o</sup>C</div>
										<div class="forecast-icon">
											<img src="${pageContext.request.contextPath}/publicUrl/images/icons/icon-1.svg" alt="" width=90>
										</div>	
									</div>
									<div class="degree row">
										<span class="col-sm-5"><img src="${pageContext.request.contextPath}/publicUrl/images/humidity.png" title="Humidity" alt="">20%</span>
										<span class="col-sm-5"><img src="${pageContext.request.contextPath}/publicUrl/images/uv-protection.png" title="UV-Protection">2</span>										
										<span class="col-sm-5"><img src="${pageContext.request.contextPath}/publicUrl/images/pressure.png" title="Pressure">20mb</span>
										<span class="col-sm-5"><img src="${pageContext.request.contextPath}/publicUrl/images/vision.png" title="Visibility ">18km</span>
										<span class="col-sm-5"><img src="${pageContext.request.contextPath}/publicUrl/images/wind.png" title="Wind Speed">18m/s</span>
										<span class="col-sm-5"><img src="${pageContext.request.contextPath}/publicUrl/images/compass.png" title="Wind Direction">NE</span>
									</div>
									<div class="degree row">
										<span class="col-sm-5"><img src="${pageContext.request.contextPath}/publicUrl/images/cloud.png" title="Average total cloud coverage">25%</span>
										<span class="col-sm-5"><img src="${pageContext.request.contextPath}/publicUrl/images/sunrise.png" title="Sunrise">05:00</span>
										<span class="col-sm-5"><img src="${pageContext.request.contextPath}/publicUrl/images/water.png" title="Average sea level pressure">1017mb</span>
										<span class="col-sm-5"><img src="${pageContext.request.contextPath}/publicUrl/images/sunset.png" title="Sunset">17:00</span>
										<span class="col-sm-5"><img src="${pageContext.request.contextPath}/publicUrl/images/snow.png" title="Accumulated snowfall">0mm</span>
										<span class="col-sm-5"><img src="${pageContext.request.contextPath}/publicUrl/images/moonrise.png" title="Moonrise">18:00</span>
										<span class="col-sm-5"><img src="${pageContext.request.contextPath}/publicUrl/images/snow-depth.png" title="Snow Depth">0mm</span>
										<span class="col-sm-5"><img src="${pageContext.request.contextPath}/publicUrl/images/moonset.png" title="Moonset">04:00</span>
									</div>
									<div class="clear"></div>
									<div class="location row">
										<span class="col-sm-5">Minimum Temperature: 19<sup>o</sup>C</span>
										<span class="col-sm-5">Low-level (~0-3km AGL) cloud coverage: 25%</span>
										<span class="col-sm-5">Maximum Temperature: 25<sup>o</sup>C</span>
										<span class="col-sm-5">High-level (>5km AGL) cloud coverage: 100%</span>
										<span class="col-sm-5">"Feels Like" temperature at min_temp time: 20<sup>o</sup>C</span>
										<span class="col-sm-5">Accumulated snow fall: 0mm</span>
										<span class="col-sm-5">"Feels Like" temperature at max_temp time: 23<sup>o</sup>C</span>
										<span class="col-sm-5">Accumulated liquid equivalent precipitation: 20mm</span>
									</div>
								</div>
							</div>
						    <div id="day-3" class="forecast today tab-pane">
								<div class="forecast-header">
									<div class="city">New York, USA</div>
									<div class="day">
										<div class="forecast-icon">
											<img src="${pageContext.request.contextPath}/publicUrl/images/icons/icon-1.svg" alt="" width=90>
										</div>
									</div>
									<div class="date">8 Oct 2019</div>
								</div> <!-- .forecast-header -->
								<div class="forecast-content">
									<div class="location">Thunderstorm with light rain</div>
									<div class="degree">
										<div class="num">23<sup>o</sup>C</div>
										<div class="forecast-icon">
											<img src="${pageContext.request.contextPath}/publicUrl/images/icons/icon-1.svg" alt="" width=90>
										</div>	
									</div>
									<div class="degree row">
										<span class="col-sm-5"><img src="${pageContext.request.contextPath}/publicUrl/images/humidity.png" title="Humidity" alt="">20%</span>
										<span class="col-sm-5"><img src="${pageContext.request.contextPath}/publicUrl/images/uv-protection.png" title="UV-Protection">2</span>										
										<span class="col-sm-5"><img src="${pageContext.request.contextPath}/publicUrl/images/pressure.png" title="Pressure">20mb</span>
										<span class="col-sm-5"><img src="${pageContext.request.contextPath}/publicUrl/images/vision.png" title="Visibility ">18km</span>
										<span class="col-sm-5"><img src="${pageContext.request.contextPath}/publicUrl/images/wind.png" title="Wind Speed">18m/s</span>
										<span class="col-sm-5"><img src="${pageContext.request.contextPath}/publicUrl/images/compass.png" title="Wind Direction">NE</span>
									</div>
									<div class="degree row">
										<span class="col-sm-5"><img src="${pageContext.request.contextPath}/publicUrl/images/cloud.png" title="Average total cloud coverage">25%</span>
										<span class="col-sm-5"><img src="${pageContext.request.contextPath}/publicUrl/images/sunrise.png" title="Sunrise">05:00</span>
										<span class="col-sm-5"><img src="${pageContext.request.contextPath}/publicUrl/images/water.png" title="Average sea level pressure">1017mb</span>
										<span class="col-sm-5"><img src="${pageContext.request.contextPath}/publicUrl/images/sunset.png" title="Sunset">17:00</span>
										<span class="col-sm-5"><img src="${pageContext.request.contextPath}/publicUrl/images/snow.png" title="Accumulated snowfall">0mm</span>
										<span class="col-sm-5"><img src="${pageContext.request.contextPath}/publicUrl/images/moonrise.png" title="Moonrise">18:00</span>
										<span class="col-sm-5"><img src="${pageContext.request.contextPath}/publicUrl/images/snow-depth.png" title="Snow Depth">0mm</span>
										<span class="col-sm-5"><img src="${pageContext.request.contextPath}/publicUrl/images/moonset.png" title="Moonset">04:00</span>
									</div>
									<div class="clear"></div>
									<div class="location row">
										<span class="col-sm-5">Minimum Temperature: 19<sup>o</sup>C</span>
										<span class="col-sm-5">Low-level (~0-3km AGL) cloud coverage: 25%</span>
										<span class="col-sm-5">Maximum Temperature: 25<sup>o</sup>C</span>
										<span class="col-sm-5">High-level (>5km AGL) cloud coverage: 100%</span>
										<span class="col-sm-5">"Feels Like" temperature at min_temp time: 20<sup>o</sup>C</span>
										<span class="col-sm-5">Accumulated snow fall: 0mm</span>
										<span class="col-sm-5">"Feels Like" temperature at max_temp time: 23<sup>o</sup>C</span>
										<span class="col-sm-5">Accumulated liquid equivalent precipitation: 20mm</span>
										
									</div>
								</div>
							</div>
							<div id="day-4" class="forecast today tab-pane">
								<div class="forecast-header">
									<div class="city">New York, USA</div>
									<div class="day">
										<div class="forecast-icon">
											<img src="${pageContext.request.contextPath}/publicUrl/images/icons/icon-1.svg" alt="" width=90>
										</div>
									</div>
									<div class="date">9 Oct 2019</div>
								</div> <!-- .forecast-header -->
								<div class="forecast-content">
									<div class="location">Thunderstorm with light rain</div>
									<div class="degree">
										<div class="num">23<sup>o</sup>C</div>
										<div class="forecast-icon">
											<img src="${pageContext.request.contextPath}/publicUrl/images/icons/icon-1.svg" alt="" width=90>
										</div>	
									</div>
									<div class="degree row">
										<span class="col-sm-5"><img src="${pageContext.request.contextPath}/publicUrl/images/humidity.png" title="Humidity" alt="">20%</span>
										<span class="col-sm-5"><img src="${pageContext.request.contextPath}/publicUrl/images/uv-protection.png" title="UV-Protection">2</span>										
										<span class="col-sm-5"><img src="${pageContext.request.contextPath}/publicUrl/images/pressure.png" title="Pressure">20mb</span>
										<span class="col-sm-5"><img src="${pageContext.request.contextPath}/publicUrl/images/vision.png" title="Visibility ">18km</span>
										<span class="col-sm-5"><img src="${pageContext.request.contextPath}/publicUrl/images/wind.png" title="Wind Speed">18m/s</span>
										<span class="col-sm-5"><img src="${pageContext.request.contextPath}/publicUrl/images/compass.png" title="Wind Direction">NE</span>
									</div>
									<div class="degree row">
										<span class="col-sm-5"><img src="${pageContext.request.contextPath}/publicUrl/images/cloud.png" title="Average total cloud coverage">25%</span>
										<span class="col-sm-5"><img src="${pageContext.request.contextPath}/publicUrl/images/sunrise.png" title="Sunrise">05:00</span>
										<span class="col-sm-5"><img src="${pageContext.request.contextPath}/publicUrl/images/water.png" title="Average sea level pressure">1017mb</span>
										<span class="col-sm-5"><img src="${pageContext.request.contextPath}/publicUrl/images/sunset.png" title="Sunset">17:00</span>
										<span class="col-sm-5"><img src="${pageContext.request.contextPath}/publicUrl/images/snow.png" title="Accumulated snowfall">0mm</span>
										<span class="col-sm-5"><img src="${pageContext.request.contextPath}/publicUrl/images/moonrise.png" title="Moonrise">18:00</span>
										<span class="col-sm-5"><img src="${pageContext.request.contextPath}/publicUrl/images/snow-depth.png" title="Snow Depth">0mm</span>
										<span class="col-sm-5"><img src="${pageContext.request.contextPath}/publicUrl/images/moonset.png" title="Moonset">04:00</span>
									</div>
									<div class="clear"></div>
									<div class="location row">
										<span class="col-sm-5">Minimum Temperature: 19<sup>o</sup>C</span>
										<span class="col-sm-5">Low-level (~0-3km AGL) cloud coverage: 25%</span>
										<span class="col-sm-5">Maximum Temperature: 25<sup>o</sup>C</span>
										<span class="col-sm-5">High-level (>5km AGL) cloud coverage: 100%</span>
										<span class="col-sm-5">"Feels Like" temperature at min_temp time: 20<sup>o</sup>C</span>
										<span class="col-sm-5">Accumulated snow fall: 0mm</span>
										<span class="col-sm-5">"Feels Like" temperature at max_temp time: 23<sup>o</sup>C</span>
										<span class="col-sm-5">Accumulated liquid equivalent precipitation: 20mm</span>
										
									</div>
								</div>
							</div>
							<div id="day-5" class="forecast today tab-pane">
								<div class="forecast-header">
									<div class="city">New York, USA</div>
									<div class="day">
										<div class="forecast-icon">
											<img src="${pageContext.request.contextPath}/publicUrl/images/icons/icon-1.svg" alt="" width=90>
										</div>
									</div>
									<div class="date">10 Oct 2019</div>
								</div> <!-- .forecast-header -->
								<div class="forecast-content">
									<div class="location">Thunderstorm with light rain</div>
									<div class="degree">
										<div class="num">23<sup>o</sup>C</div>
										<div class="forecast-icon">
											<img src="${pageContext.request.contextPath}/publicUrl/images/icons/icon-1.svg" alt="" width=90>
										</div>	
									</div>
									<div class="degree row">
										<span class="col-sm-5"><img src="${pageContext.request.contextPath}/publicUrl/images/humidity.png" title="Humidity" alt="">20%</span>
										<span class="col-sm-5"><img src="${pageContext.request.contextPath}/publicUrl/images/uv-protection.png" title="UV-Protection">2</span>										
										<span class="col-sm-5"><img src="${pageContext.request.contextPath}/publicUrl/images/pressure.png" title="Pressure">20mb</span>
										<span class="col-sm-5"><img src="${pageContext.request.contextPath}/publicUrl/images/vision.png" title="Visibility ">18km</span>
										<span class="col-sm-5"><img src="${pageContext.request.contextPath}/publicUrl/images/wind.png" title="Wind Speed">18m/s</span>
										<span class="col-sm-5"><img src="${pageContext.request.contextPath}/publicUrl/images/compass.png" title="Wind Direction">NE</span>
									</div>
									<div class="degree row">
										<span class="col-sm-5"><img src="${pageContext.request.contextPath}/publicUrl/images/cloud.png" title="Average total cloud coverage">25%</span>
										<span class="col-sm-5"><img src="${pageContext.request.contextPath}/publicUrl/images/sunrise.png" title="Sunrise">05:00</span>
										<span class="col-sm-5"><img src="${pageContext.request.contextPath}/publicUrl/images/water.png" title="Average sea level pressure">1017mb</span>
										<span class="col-sm-5"><img src="${pageContext.request.contextPath}/publicUrl/images/sunset.png" title="Sunset">17:00</span>
										<span class="col-sm-5"><img src="${pageContext.request.contextPath}/publicUrl/images/snow.png" title="Accumulated snowfall">0mm</span>
										<span class="col-sm-5"><img src="${pageContext.request.contextPath}/publicUrl/images/moonrise.png" title="Moonrise">18:00</span>
										<span class="col-sm-5"><img src="${pageContext.request.contextPath}/publicUrl/images/snow-depth.png" title="Snow Depth">0mm</span>
										<span class="col-sm-5"><img src="${pageContext.request.contextPath}/publicUrl/images/moonset.png" title="Moonset">04:00</span>
									</div>
									<div class="clear"></div>
									<div class="location row">
										<span class="col-sm-5">Minimum Temperature: 19<sup>o</sup>C</span>
										<span class="col-sm-5">Low-level (~0-3km AGL) cloud coverage: 25%</span>
										<span class="col-sm-5">Maximum Temperature: 25<sup>o</sup>C</span>
										<span class="col-sm-5">High-level (>5km AGL) cloud coverage: 100%</span>
										<span class="col-sm-5">"Feels Like" temperature at min_temp time: 20<sup>o</sup>C</span>
										<span class="col-sm-5">Accumulated snow fall: 0mm</span>
										<span class="col-sm-5">"Feels Like" temperature at max_temp time: 23<sup>o</sup>C</span>
										<span class="col-sm-5">Accumulated liquid equivalent precipitation: 20mm</span>
										
									</div>
								</div>
							</div>
							<div id="day-6" class="forecast today tab-pane">
								<div class="forecast-header">
									<div class="city">New York, USA</div>
									<div class="day">
										<div class="forecast-icon">
											<img src="${pageContext.request.contextPath}/publicUrl/images/icons/icon-1.svg" alt="" width=90>
										</div>
									</div>
									<div class="date">11 Oct 2019</div>
								</div> <!-- .forecast-header -->
								<div class="forecast-content">
									<div class="location">Thunderstorm with light rain</div>
									<div class="degree">
										<div class="num">23<sup>o</sup>C</div>
										<div class="forecast-icon">
											<img src="${pageContext.request.contextPath}/publicUrl/images/icons/icon-1.svg" alt="" width=90>
										</div>	
									</div>
									<div class="degree row">
										<span class="col-sm-5"><img src="${pageContext.request.contextPath}/publicUrl/images/humidity.png" title="Humidity" alt="">20%</span>
										<span class="col-sm-5"><img src="${pageContext.request.contextPath}/publicUrl/images/uv-protection.png" title="UV-Protection">2</span>										
										<span class="col-sm-5"><img src="${pageContext.request.contextPath}/publicUrl/images/pressure.png" title="Pressure">20mb</span>
										<span class="col-sm-5"><img src="${pageContext.request.contextPath}/publicUrl/images/vision.png" title="Visibility ">18km</span>
										<span class="col-sm-5"><img src="${pageContext.request.contextPath}/publicUrl/images/wind.png" title="Wind Speed">18m/s</span>
										<span class="col-sm-5"><img src="${pageContext.request.contextPath}/publicUrl/images/compass.png" title="Wind Direction">NE</span>
									</div>
									<div class="degree row">
										<span class="col-sm-5"><img src="${pageContext.request.contextPath}/publicUrl/images/cloud.png" title="Average total cloud coverage">25%</span>
										<span class="col-sm-5"><img src="${pageContext.request.contextPath}/publicUrl/images/sunrise.png" title="Sunrise">05:00</span>
										<span class="col-sm-5"><img src="${pageContext.request.contextPath}/publicUrl/images/water.png" title="Average sea level pressure">1017mb</span>
										<span class="col-sm-5"><img src="${pageContext.request.contextPath}/publicUrl/images/sunset.png" title="Sunset">17:00</span>
										<span class="col-sm-5"><img src="${pageContext.request.contextPath}/publicUrl/images/snow.png" title="Accumulated snowfall">0mm</span>
										<span class="col-sm-5"><img src="${pageContext.request.contextPath}/publicUrl/images/moonrise.png" title="Moonrise">18:00</span>
										<span class="col-sm-5"><img src="${pageContext.request.contextPath}/publicUrl/images/snow-depth.png" title="Snow Depth">0mm</span>
										<span class="col-sm-5"><img src="${pageContext.request.contextPath}/publicUrl/images/moonset.png" title="Moonset">04:00</span>
									</div>
									<div class="clear"></div>
									<div class="location row">
										<span class="col-sm-5">Minimum Temperature: 19<sup>o</sup>C</span>
										<span class="col-sm-5">Low-level (~0-3km AGL) cloud coverage: 25%</span>
										<span class="col-sm-5">Maximum Temperature: 25<sup>o</sup>C</span>
										<span class="col-sm-5">High-level (>5km AGL) cloud coverage: 100%</span>
										<span class="col-sm-5">"Feels Like" temperature at min_temp time: 20<sup>o</sup>C</span>
										<span class="col-sm-5">Accumulated snow fall: 0mm</span>
										<span class="col-sm-5">"Feels Like" temperature at max_temp time: 23<sup>o</sup>C</span>
										<span class="col-sm-5">Accumulated liquid equivalent precipitation: 20mm</span>
										
									</div>
								</div>
							</div>
							<div id="day-7" class="forecast today tab-pane">
								<div class="forecast-header">
									<div class="city">New York, USA</div>
									<div class="day">
										<div class="forecast-icon">
											<img src="${pageContext.request.contextPath}/publicUrl/images/icons/icon-1.svg" alt="" width=90>
										</div>
									</div>
									<div class="date">12 Oct 2019</div>
								</div> <!-- .forecast-header -->
								<div class="forecast-content">
									<div class="location">Thunderstorm with light rain</div>
									<div class="degree">
										<div class="num">23<sup>o</sup>C</div>
										<div class="forecast-icon">
											<img src="${pageContext.request.contextPath}/publicUrl/images/icons/icon-1.svg" alt="" width=90>
										</div>	
									</div>
									<div class="degree row">
										<span class="col-sm-5"><img src="${pageContext.request.contextPath}/publicUrl/images/humidity.png" title="Humidity" alt="">20%</span>
										<span class="col-sm-5"><img src="${pageContext.request.contextPath}/publicUrl/images/uv-protection.png" title="UV-Protection">2</span>										
										<span class="col-sm-5"><img src="${pageContext.request.contextPath}/publicUrl/images/pressure.png" title="Pressure">20mb</span>
										<span class="col-sm-5"><img src="${pageContext.request.contextPath}/publicUrl/images/vision.png" title="Visibility ">18km</span>
										<span class="col-sm-5"><img src="${pageContext.request.contextPath}/publicUrl/images/wind.png" title="Wind Speed">18m/s</span>
										<span class="col-sm-5"><img src="${pageContext.request.contextPath}/publicUrl/images/compass.png" title="Wind Direction">NE</span>
									</div>
									<div class="degree row">
										<span class="col-sm-5"><img src="${pageContext.request.contextPath}/publicUrl/images/cloud.png" title="Average total cloud coverage">25%</span>
										<span class="col-sm-5"><img src="${pageContext.request.contextPath}/publicUrl/images/sunrise.png" title="Sunrise">05:00</span>
										<span class="col-sm-5"><img src="${pageContext.request.contextPath}/publicUrl/images/water.png" title="Average sea level pressure">1017mb</span>
										<span class="col-sm-5"><img src="${pageContext.request.contextPath}/publicUrl/images/sunset.png" title="Sunset">17:00</span>
										<span class="col-sm-5"><img src="${pageContext.request.contextPath}/publicUrl/images/snow.png" title="Accumulated snowfall">0mm</span>
										<span class="col-sm-5"><img src="${pageContext.request.contextPath}/publicUrl/images/moonrise.png" title="Moonrise">18:00</span>
										<span class="col-sm-5"><img src="${pageContext.request.contextPath}/publicUrl/images/snow-depth.png" title="Snow Depth">0mm</span>
										<span class="col-sm-5"><img src="${pageContext.request.contextPath}/publicUrl/images/moonset.png" title="Moonset">04:00</span>
									</div>
									<div class="clear"></div>
									<div class="location row">
										<span class="col-sm-5">Minimum Temperature: 19<sup>o</sup>C</span>
										<span class="col-sm-5">Low-level (~0-3km AGL) cloud coverage: 25%</span>
										<span class="col-sm-5">Maximum Temperature: 25<sup>o</sup>C</span>
										<span class="col-sm-5">High-level (>5km AGL) cloud coverage: 100%</span>
										<span class="col-sm-5">"Feels Like" temperature at min_temp time: 20<sup>o</sup>C</span>
										<span class="col-sm-5">Accumulated snow fall: 0mm</span>
										<span class="col-sm-5">"Feels Like" temperature at max_temp time: 23<sup>o</sup>C</span>
										<span class="col-sm-5">Accumulated liquid equivalent precipitation: 20mm</span>
										
									</div>
								</div>
							</div>
						  </div>
							<div class="container wf">
								<h2 class="section-title">Notes</h2>
								<div class="row">
									<span class="col-sm-5"><img src="${pageContext.request.contextPath}/publicUrl/images/humidity.png" title="Humidity" alt="">: Average relative humidity (%)</span>
									<span class="col-sm-5"><img src="${pageContext.request.contextPath}/publicUrl/images/uv-protection.png" title="UV-Protection">: Maximum UV Index (0-11+)</span>										
									<span class="col-sm-5"><img src="${pageContext.request.contextPath}/publicUrl/images/pressure.png" title="Pressure">: Average pressure (mb)</span>
									<span class="col-sm-5"><img src="${pageContext.request.contextPath}/publicUrl/images/vision.png" title="Vision">: Visibility (default KM)</span>
									<span class="col-sm-5"><img src="${pageContext.request.contextPath}/publicUrl/images/wind.png" title="Wind Speed">: Wind speed (Default m/s)</span>
									<span class="col-sm-5"><img src="${pageContext.request.contextPath}/publicUrl/images/compass.png" title="Wind Direction">: Abbreviated wind direction</span>
									<span class="col-sm-5"><img src="${pageContext.request.contextPath}/publicUrl/images/cloud.png" title="Average total cloud coverage">: Average total cloud coverage (%)</span>
									<span class="col-sm-5"><img src="${pageContext.request.contextPath}/publicUrl/images/sunrise.png" title="Sunrise">: Sunrise time unix timestamp (UTC)</span>
									<span class="col-sm-5"><img src="${pageContext.request.contextPath}/publicUrl/images/water.png" title="Average sea level pressure">: Average sea level pressure (mb)</span>
									<span class="col-sm-5"><img src="${pageContext.request.contextPath}/publicUrl/images/sunset.png" title="Sunset">: Sunset time unix timestamp (UTC)</span>
									<span class="col-sm-5"><img src="${pageContext.request.contextPath}/publicUrl/images/snow.png" title="Accumulated snowfall">: Accumulated snow fall (default mm)</span>
									<span class="col-sm-5"><img src="${pageContext.request.contextPath}/publicUrl/images/moonrise.png" title="Moonrise">: Moonrise time unix timestamp (UTC)</span>
									<span class="col-sm-5"><img src="${pageContext.request.contextPath}/publicUrl/images/snow-depth.png" title="Snow Depth">: Snow Depth (default mm)</span>
									<span class="col-sm-5"><img src="${pageContext.request.contextPath}/publicUrl/images/moonset.png" title="Moonset">: Moonset time unix timestamp (UTC)</span>
								</div>
							</div>
						
					</div>
				</div>
			</div>