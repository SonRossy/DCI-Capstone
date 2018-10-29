package com.services;
import com.google.gson.Gson;
import com.model.QuoteUser;

import javax.ws.rs.Consumes;
import javax.ws.rs.GET;
import javax.ws.rs.POST;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;



@Path ("/calculatePremium")
public class PremiumServices {

	
	@GET
	@Produces(MediaType.APPLICATION_JSON)
	
	//getting json object
	//@Consumes ({MediaType.APPLICATION_JSON, MediaType.TEXT_PLAIN})
	
	
	 public Response getMessage(String userInfo)
	   {
		 userInfo = "{firstname : 'Hello', age: 20, lifeStyle : [1,2,3]}";
		 Gson converter = new Gson();
		 QuoteUser q = converter.fromJson(userInfo, QuoteUser.class);
		 System.out.println(q);
	     String outMsg = "Hello " + "!";
	     return Response.status(200).entity(outMsg).build();
	   }
}
