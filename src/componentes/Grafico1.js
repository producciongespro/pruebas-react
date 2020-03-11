import React, {useState, useEffect } from 'react';
import Chart from '../componentes/Chart';
const API_URL= "https://nataliia-radina.github.io/react-vis-example/";


function Grafico1 () {

    const [datosJson, setDatosJson] = useState(null);

    async function obtenerDatos () {
        let response = await fetch(API_URL);
        let rawJson =  await response.json()
        console.log("rawJson.results",rawJson.results);        
        //setDatosJson(rawJson.results);       
        let resultados = await rawJson.results.filter((r)=>{
            //return r.name === 'JavaScript';
            return r.name === 'PHP';
        });
        console.log("resultados",resultados); 
        setDatosJson(resultados);       
    }

    useEffect (()=>{
        obtenerDatos();       
    },[] );

    useEffect(()=>{
        console.log("datosJson",datosJson);
    })

    return (
        
         datosJson &&
         (
            <div className="col-12">
                <Chart data={datosJson} />
            </div>
         )
        
    )
    
}


export default Grafico1;