import React from 'react';
import "react-responsive-carousel/lib/styles/carousel.min.css";
import { Carousel } from 'react-responsive-carousel';

function App() {
  return (
    <div className="App">
       <Carousel>
                <div>
                    <img src="https://lifestyle.americaeconomia.com/sites/lifestyle.americaeconomia.com/files/styles/gallery_image/public/lexus1.jpg"  alt="1"/>
                    <p className="legend">Legend 1</p>
                </div>
                <div>
                    <img src="https://lifestyle.americaeconomia.com/sites/lifestyle.americaeconomia.com/files/styles/gallery_image/public/audi.jpg" alt="2" />
                    <p className="legend">Legend 2</p>
                </div>
                <div>
                    <img src="https://www.cdn.renault.com/content/dam/Renault/AR/modelos/fluence/AR_M_fluence.jpg.ximg.l_12_m.smart.jpg" alt="3" />
                    <p className="legend">Legend 3</p>
                </div>
            </Carousel>
    </div>
  );
}

export default App;
