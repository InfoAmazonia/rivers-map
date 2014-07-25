
#srtm500m3785outputco,
#srtm500m3785slopesha,
#srtm500m3785hillshad {
  raster-comp-op:multiply;
  raster-scaling: bilinear;
}

#srtm500m3785hillshad { raster-opacity:0.6;}
#srtm500m3785slopesha { raster-opacity:0.4; }
//#srtm500m3785outputco { raster-opacity:0.9;}

#osmwaterways,
#osmwaterareas {
  line-color:#093d52;
  line-width:0.5;
  polygon-opacity:1;
  polygon-fill:#117e9f;
}


#osmwaterways {
 
  [zoom>=8]{ 
    ::labels{
      text-name: "[NAME_LOC]";
      text-face-name:"Arial Bold";
      text-halo-fill: #3d3d3d;
      text-size:08;
      text-fill:#85c5d3;
      text-line-spacing: 10; 
      text-allow-overlap: false;
    }

    [zoom>=9]{ 
      ::labels{ 
        text-name: "[NAME_LOC]";
        text-face-name:"Arial Bold";
        text-halo-fill: #3d3d3d;
        text-size: 10;
        text-fill:#85c5d3;
        //text-line-spacing: 20; 
        text-allow-overlap: false;
      }
    }

   [zoom>=11]{ 
      ::labels{
        text-name: "[NAME_LOC]";
        text-face-name:"Arial Bold";
        text-halo-fill: #3d3d3d;
        text-size: 12;
        text-fill:#85c5d3;
        //text-line-spacing: 20; 
        text-allow-overlap: false;
      }
    }
  }


  #10mbathymetry {
    line-color:#85c1dd;
    line-width:0.1;
    polygon-opacity:0.7;
    polygon-fill:#1d89ad; //318fb5;
  }
}

#test {
  marker-width:10;
  marker-fill:#f45;
  marker-line-color:#813;
  marker-allow-overlap:true;
}


#teste2 {
  line-width:1;
  line-color:#168;
}
