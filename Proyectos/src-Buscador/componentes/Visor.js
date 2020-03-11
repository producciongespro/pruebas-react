import React from 'react';

function Visor (props) {
    

    return ( 
             <div className="col-6">
             <ul>
              {
                    props.datosFiltrados !== null && 
                       (
                        props.nombreCient ?
                        (
                            props.datosFiltrados.map((item,i)=>(
                                <li onClick={props.handleMostrarDetalle}  id={item.id}  key={item.id}> {item.nombre_cientifico } </li>
                            ))
                        ):
                        (
                            props.datosFiltrados.map((item,i)=>(
                                <li onClick={props.handleMostrarDetalle}  id={item.id}  key={item.id}> {item.nombre_comun } </li>
                            ))
                        )
                       )
                    
              }
          </ul>
             </div>
    )
}

export default Visor;