import React from 'react';

function Detalle(props) {

    return (
        <div className="col-6">
            <strong>Detalle</strong>
            {
                props.info !== null &&
                (
                    <React.Fragment>
                        <h5>
                            Nombre Común: {props.info.nombre_comun}
                        </h5>
                        <h5>
                            Nombre científico:  {props.info.nombre_cientifico}
                        </h5>
                        
                        <p>
                            {
                                props.info.observaciones
                            }
                        </p>
                    </React.Fragment>
                )
            }
        </div>
    )
}

export default Detalle;