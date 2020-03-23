import React, {useState}  from 'react';
import Menu from './componentes/Menu';
import Grafico1 from './componentes/Grafico1';
import Grafico2 from './componentes/Grafico2';
import Grafico3 from './componentes/Grafico3';
import Grafico4 from './componentes/Grafico4';
const componentes = [ <Grafico1/>, <Grafico2/>,  <Grafico3/>, <Grafico4/>   ];

function App() {
  const [compActual, setCompActual ]= useState(null);

  const handleMontarComponentes =(e)=> {
    let i = e.target.id;
    //console.log("i->",i);    
    setCompActual(componentes[i]  );
  }

  return (
    <div className="container">
      <div className="row">
          <Menu handleMontarComponentes={handleMontarComponentes} />
      </div>
      <br/>
      <div className="row">
          {
            compActual
          }
      </div>

    </div>
  );
}

export default App;
