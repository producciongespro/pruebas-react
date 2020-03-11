import React from 'react';
import Menu from './componentes/Menu';
import Grafico1 from './componentes/Grafico1';

function App() {
  return (
    <div className="container">
      <div className="row">
          <Menu/>
      </div>
      <div className="row">
          <Grafico1/>
      </div>

    </div>
  );
}

export default App;
