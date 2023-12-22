define(['pipAPI', 'https://robertoglz.github.io/template_main.js'], function(APIConstructor, iatExtension){
    var API = new APIConstructor();

	return iatExtension({
		category1 : {
			name : 'MORENA', //Will appear in the data.
			title : {
				media: {
        image: 'logo_morena.png', // Name of the category presented in the task.
        css: {
            width: '50px', // Set the width of the image
            height: 'auto', // Automatically adjust height based on width
            position: 'absolute', // Positioning absolute to place it in a corner
            top: '10px', // Distance from the top
            left: '10px' // Distance from the left
        }
    }, //Name of the category presented in the task.
				css : {color:'#31940F','font-size':'2em'}, //Style of the category title.
				height : 4 //Used to position the "Or" in the combined block.
			}, 
			stimulusMedia : [ //Stimuli content as PIP's media objects
    		    {word : 'AMLO'}, 
    			{word : 'Transformación'}, 
    			{word : 'Izquierda'}, 
    			{word : 'Cambio'}, 
    			{word : 'Progresismo'}, 
    			{word : 'Renovación'}
			], 
			//Stimulus css (style)
			stimulusCss : {color:'#31940F','font-size':'1.8em'}
		},	
		category2 :	{
			name : 'PAN', //Will appear in the data.
			title : {
				media : {image : 'logo_pan.png'}, //Name of the category presented in the task.
				css : {color:'#31940F','font-size':'2em'}, //Style of the category title.
				height : 4 //Used to position the "Or" in the combined block.
			}, 
			stimulusMedia : [ //Stimuli content as PIP's media objects
    		    {word : 'Conservadores'}, 
    			{word : 'Derecha'}, 
    			{word : 'Tradición'}, 
    			{word : 'Empresario'}, 
    			{word : 'Orden'}, 
    			{word : 'Alternancia'}			], 
			//Stimulus css
			stimulusCss : {color:'#31940F','font-size':'1.8em'}
		},	

		base_url : {//Where are your images at?
			image : 'https://robertoglz.github.io/IAT/images/'
		} 
	});
});
