package com.model;

import java.util.HashMap;

public class PreCalRules {

	private PreCalRules(HashMap<String, Double> hmap) {
		/*Adding elements to HashMap*/

		hmap.put(Gender.Male.toString(), 1.01);
		hmap.put(Gender.Female.toString(), 1.01);
		hmap.put(PreCondition.Family_History.toString(),1.01);
		hmap.put(PreCondition.Any.toString(),1.025);
		hmap.put(LifeStyle.Tobacco.toString(),1.03);
		hmap.put(LifeStyle.Substance_Abuse.toString(),1.05);
		hmap.put(LifeStyle.Exercise.toString(),0.03);
		hmap.put(LifeStyle.Sedentary_Job.toString(),1.01);
		hmap.put(LifeStyle.Stressful_Job.toString(),1.01);
		hmap.put(LifeStyle.Healthy_Eat.toString(),1.015);
		
			
	}

}
