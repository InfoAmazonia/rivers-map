// pallete
@water:#117e9f;
@text:#fff;
@text-border:#273e5b;

#waterways {  
  [waterway='river'] {
    line-color: @water;
    line-width: 0.2;
    [zoom>6] {
      line-width: 0.5;      
    }
  }
    
  [waterway='stream'][zoom>=10] {
      line-color: @water;
      line-width: 0.5;
  }  
}

#waterareas {
  line-color:#093d52;
  line-width:0.5;
  polygon-opacity:1;
  polygon-fill:@water;
}


#labels {
	[zoom>=8]{
    	::labels {
  			text-name: [name];
  			text-face-name: 'Arial Bold';
  			text-fill: @text;
  			text-size: 10;
      		text-placement: line;
        	text-halo-fill: fadeout(@text-border, 20%);
			text-halo-radius: 1;
            text-max-char-angle-delta: 15;
      
    	}
    }
}
