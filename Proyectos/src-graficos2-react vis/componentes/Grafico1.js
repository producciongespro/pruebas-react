import React, { useState, useEffect } from 'react';
import Chart from '../componentes/Chart';
const API_URL = "https://nataliia-radina.github.io/react-vis-example/";
const lenguajes = ["JavaScript", "TypeScript", "PHP", "Go", "Pascal", "Python", "Java", "Smalltalk", "C", "C++", "C#", "Ruby", "Perl", "Kotlin", "CSS" ];
var datosJson = null;

function Grafico1() {

    const [datosFiltrados, setDatosFiltrados] = useState(null);    
    const [isDataReady, setIsDataReady] = useState(false);

    async function obtenerDatos() {
        let response = await fetch(API_URL);
        let rawJson = await response.json()
        datosJson = rawJson.results;
        console.log("datosJson", datosJson);
        setIsDataReady(true);
    };

    useEffect(() => {
        obtenerDatos();
    }, []);

    useEffect(() => {
        console.log("datosFiltrados", datosFiltrados);
    });

    const handlefiltrarDatos = (e) => {
        let lenguaje = lenguajes[e.target.id];
        console.log("lenguaje",lenguaje);        
        let resultados = datosJson.filter((r) => {
            return r.name === lenguaje;
        });
        //console.log("resultados", resultados);
        setDatosFiltrados(resultados);
    }

    return (
        <React.Fragment>
            <div className="row">
                <h2> Lenguajes en Github </h2>
            </div>
            {
                isDataReady ?
                (
                    <div className="row">
                    <div className="col-12">
                        {
                            lenguajes.map((item, i) => (
                                <button key={"lenguaje" + i} onClick={handlefiltrarDatos} id={i} className="btn btn-outline-info m-1" > {item} </button>
                            ))
                        }
                    </div>
                </div>
                ) :
                (
                    <span>Cargando datos....</span>
                )
            }
            <br/>
            {
                datosFiltrados && <Chart data={datosFiltrados} />
            }
        </React.Fragment>               
    );

}


export default Grafico1;