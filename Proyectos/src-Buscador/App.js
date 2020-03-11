import React, { useState, useEffect } from 'react';
import Menu from './componentes/Menu';
import Splash from './componentes/Spalsh';
import Visor from './componentes/Visor';
import Detalle from './componentes/Detalle';

var datosJson = null;

function App() {
  const [isReady, setisReady] = useState(false);
  const [datosFiltrados, setDatosFiltrados] = useState(null);
  const [info, setInfo] = useState(null);
  const [nombreCient, setNombreCient] = useState(false);

  useEffect(() => {
    obtenerDatos();
  }, [])

  async function obtenerDatos() {
    //let response = await fetch('http://localhost/Buscador/webservice/obtener.php');
    let response = await fetch('https://mundologan.xyz/ws/buscadot/obtener.php');
    
    datosJson = await response.json();
    //console.log("aaray", datosJson);
    setisReady(true);
    setDatosFiltrados(datosJson);
  }


  const handleBuscador = (e) => {
    let palabra = e.target.value.toLowerCase();
    console.log("Palabra", palabra);
    let limite = datosJson.length;

    if (nombreCient) {
      let tmpArray = [];

            for (let index = 0; index < limite; index++) {
              const str = datosJson[index].nombre_cientifico.toLowerCase();
              const patt = new RegExp(palabra);
              let res = patt.test(str);
              if (res) {
                tmpArray.push(datosJson[index])
              }
            }
            setDatosFiltrados(tmpArray);
    } else {
            let tmpArray = [];

            for (let index = 0; index < limite; index++) {
              const str = datosJson[index].nombre_comun.toLowerCase();
              const patt = new RegExp(palabra);
              let res = patt.test(str);
              if (res) {
                tmpArray.push(datosJson[index])
              }
            }
            setDatosFiltrados(tmpArray);

    }

  }




  const handleMostrarDetalle = (e) => {
    const id = e.target.id;
    for (let index = 0; index < datosFiltrados.length; index++) {
      if (datosFiltrados[index].id === id) {
        setInfo(datosFiltrados[index])
      }

    }

  }

  const handleNombreCientifico = (e) => {
    console.log(e.target.checked);
    setNombreCient(e.target.checked);
  }



  return (

    <div className="Container">
      {
        isReady ?
          (
            <React.Fragment>
              <Menu handleBuscador={handleBuscador} handleNombreCientifico={handleNombreCientifico} />
              <hr />
              <div className="row">
                <Visor datosFiltrados={datosFiltrados} nombreCient={nombreCient} handleMostrarDetalle={handleMostrarDetalle} />
                <Detalle info={info} />
              </div>

            </React.Fragment>
          )
          :
          <Splash />
      }

    </div>
  );
}

export default App;
