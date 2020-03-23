import React, {useState, useEffect } from 'react';
import Form1 from './componentes/Form1';
import Splash from './componentes/Splash';
import axios from 'axios';


var arrayTipo=null;
function App() {
  const [isListo, SetIsListo] = useState(false);

  useEffect(()=>{
    cargarDatos();
  },[])

  function cargarDatos() {
    arrayTipo = axios.get ("http://localhost/sanrafa-master/obtener_select.php")    
      .then((response) => {
        arrayTipo =response.data;        
        SetIsListo(true);
      })   
    
  }

  return (
    <React.Fragment>
      {
        !isListo ?
            <Splash /> :   <Form1  arrayTipo={arrayTipo} />        
      }    
        
    </React.Fragment> 
  );
}

export default App;
