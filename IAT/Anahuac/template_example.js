define(['pipAPI', 'https://robertoglz.github.io/template_main.js'], function(APIConstructor, iatExtension){
    var API = new APIConstructor();

	return iatExtension({
		category1 : {
			name : 'Democracia', //Will appear in the data.
			title : {
				media: {word : 'Democracia'}, //Name of the category presented in the task.
				css : {color:'#31940F','font-size':'2em'}, //Style of the category title.
				height : 4 //Used to position the "Or" in the combined block.
			}, 
			stimulusMedia : [ //Stimuli content as PIP's media objects
    			{word : 'Voto'}, 
    			{word : 'Participación'}, 
    			{word : 'Libre Expresión'}, 
    			{word : 'Igualdad'},
			{word : 'Tolerancia'}
			], 
			//Stimulus css (style)
			stimulusCss : {color:'#31940F','font-size':'1.8em'}
		},	
		category2 :	{
			name : 'Autoritarismo', //Will appear in the data.
			title : {
				media : {word : 'Autoritarismo'}, //Name of the category presented in the task.
				css : {color:'#31940F','font-size':'2em'}, //Style of the category title.
				height : 4 //Used to position the "Or" in the combined block.
			}, 
			stimulusMedia : [ //Stimuli content as PIP's media objects
    		    	{word : 'Dominación'}, 
    			{word : 'Militarismo'}, 
    			{word : 'Silenciar'}, 
    			{word : 'Imposición'}, 
    			{word : 'Represión'}				], 
			//Stimulus css
			stimulusCss : {color:'#31940F','font-size':'1.8em'}
		},	

		base_url : {//Where are your images at?
			image : 'https://robertoglz.github.io/IAT/images/'
		} 
	});
});
