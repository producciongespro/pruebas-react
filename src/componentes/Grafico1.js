import React, {useState, useEffect } from 'react';
const API_URL= "https://nataliia-radina.github.io/react-vis-example/";

function Grafico1 () {

    const {datosJson, setDatosJson} = useState(null);

    async function obtenerDatos () {
        const tmpJson = await fetch(API_URL);
        console.log(tmpJson);       
    }

    useEffect (()=>{
        obtenerDatos();
    })

    return (
        <div className="col-12">
            <div className="alert alert-success"> 
                Gráfico 1
            </div>
        </div>
    )
    
}


export default Grafico1;