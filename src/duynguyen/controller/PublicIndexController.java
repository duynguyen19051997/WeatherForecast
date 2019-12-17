package duynguyen.controller;

import java.net.HttpURLConnection;
import java.net.URL;
import java.util.ArrayList;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.fasterxml.jackson.databind.ObjectMapper;

import duynguyen.model.bean.Data;
import duynguyen.model.bean.JsonResult;

@Controller
public class PublicIndexController {

	@GetMapping("")
	public String index() {
		return "weatherforecast.public.index";
	}

	@PostMapping("")
	public String index(ModelMap modelMap) {
		try {
			URL url = new URL("https://api.weatherbit.io/v2.0/forecast/daily?city=Dannang&key=69081231f1834ec58e59bce226192f6d");
			// Parse URL into HttpURLConnection in order to open the connection in order to
			// get the JSON data
			HttpURLConnection conn = (HttpURLConnection) url.openConnection();
			// Set the request to GET or POST as per the requirements
			conn.setRequestMethod("GET");
			// Use the connect method to create the connection bridge
			conn.connect();
			// Get the response status of the Rest API
			int responsecode = conn.getResponseCode();
			System.out.println("Response code is: " + responsecode);

			// Iterating condition to if response code is not 200 then throw a runtime
			// exception
			// else continue the actual process of getting the JSON data
			if (responsecode != 200) {
				conn.disconnect();
				return "weatherforecast.public.index";
			}

			ObjectMapper mapper = new ObjectMapper(); // just need one
			// Got a Java class that data maps to nicely? If so:
			JsonResult jsonResult = mapper.readValue(url, JsonResult.class);
			ArrayList<Data> dataArr = jsonResult.getData();
			for (Data data : dataArr) {
				System.out.println(data.toString());
			}

			// Disconnect the HttpURLConnection stream
			conn.disconnect();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "weatherforecast.public.index";
	}
}
