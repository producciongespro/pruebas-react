import React from 'react';
import Grafico1 from './comp/Grafico1';
import comidas from './data/comidas.json';
import coloresGraficos from './data/coloresGraficos.json';


function App() {  
  return (
    <div className="container">
      <Grafico1 array={comidas} coloresGraficos={coloresGraficos} />
    </div>
  );
}

export default App;
