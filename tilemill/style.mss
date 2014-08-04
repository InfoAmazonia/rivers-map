#waterways {  
  [waterway='river'] {
    line-color: #117e9f;
    line-width: 0.2;
    [zoom>6] {
      line-width: 0.5;      
    }
  }
    
  [zoom>=10] {
       
	[waterway='stream'] {
      line-color: #117e9f;
      line-width: 0.5;
    }
  }
  
  // labels
  [zoom>=11] {
    ::labels{
      text-name: "[name]";
      text-face-name:"Arial Bold";
      text-fill: #7096bd;
      text-size: 10;
      text-placement: line;
      text-dy: 10;
      text-max-char-angle-delta: 15;
    }
  }
}

#waterareas {
  line-color:#093d52;
  line-width:0.5;
  polygon-opacity:1;
  polygon-fill:#117e9f;
}


/*
#waterways {
 
  [zoom>=8]{ 
    ::labels{
      text-name: "[name]";
      text-face-name:"Arial Bold";
      text-halo-fill: #3d3d3d;
      text-size:08;
      text-fill:#b5cde8;
      text-line-spacing: 10; 
      text-allow-overlap: false;
    }

    [zoom>=9]{ 
      ::labels{ 
        text-name: "[name]";
        text-face-name:"Arial Bold";
        text-halo-fill: #3d3d3d;
        text-size: 10;
        text-fill:#b5cde8;
        //text-line-spacing: 20; 
        text-allow-overlap: false;
      }
    }

   [zoom>=11]{ 
      ::labels{
        text-name: "[name]";
        text-face-name:"Arial Bold";
        text-halo-fill: #3d3d3d;
        text-size: 12;
        text-fill:#b5cde8;
        //text-line-spacing: 20; 
        text-allow-overlap: false;
      }
    }
  }
}*/