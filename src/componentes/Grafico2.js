import React, { useState, useEffect } from 'react';
//import referencias from '../data/referencias.json';


//const  URL_Consultas = referencias.consultageneral + "?tabla=consultas";
const  URL_Consultas = "http://pruebarecursos.mep.go.cr/webservices/si-ddie/consultas_generales.php?tabla=consultas";
  
function Grafico2 () {

    async function obtenerDatos () {
        const resp = await fetch(URL_Consultas);
        console.log("resp",resp);
        
        const datosJson = await resp.json();
        console.log(datosJson);       
    }


    useEffect(()=>{
        obtenerDatos();
    },[])


    return (
        <span>Grafico 2</span>
    );    
}

export default Grafico2;