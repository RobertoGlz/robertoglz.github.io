define(['pipAPI', 'https://robertoglz.github.io/template_main_parties.js'], function(APIConstructor, iatExtension){
    var API = new APIConstructor();

	return iatExtension({
		category1 : {
			name : 'MORENA', //Will appear in the data.
			title : {
				media: {word : 'MORENA'}, //Name of the category presented in the task.
				css : {color:'#31940F','font-size':'2em'}, //Style of the category title.
				height : 4 //Used to position the "Or" in the combined block.
			}, 
			stimulusMedia : [ //Stimuli content as PIP's media objects
    		    	{word : 'MORENA'}, 
    			{word : 'López Obrador'}, 
    			{word : 'Cuarta Transformación'}, 
    			{word : 'Claudia Sheinbaum'}, 
    			{word : 'AIFA'}
			], 
			//Stimulus css (style)
			stimulusCss : {color:'#31940F','font-size':'1.8em'}
		},	
		category2 :	{
			name : 'PAN', //Will appear in the data.
			title : {
				media : {word : 'PAN'}, //Name of the category presented in the task.
				css : {color:'#31940F','font-size':'2em'}, //Style of the category title.
				height : 4 //Used to position the "Or" in the combined block.
			}, 
			stimulusMedia : [ //Stimuli content as PIP's media objects
    		    	{word : 'PAN'}, 
    			{word : 'Xochitl Gálvez'}, 
    			{word : 'Alianza Opositora'}, 
    			{word : 'Tradicional'}, 
    			{word : 'Oposición'}				], 
			//Stimulus css
			stimulusCss : {color:'#31940F','font-size':'1.8em'}
		},	

		base_url : {//Where are your images at?
			image : 'https://robertoglz.github.io/IAT/images/'
		} 
	});
});
