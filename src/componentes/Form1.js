import React from 'react';
import { useForm } from 'react-hook-form';
import axios from 'axios';



function Form1(props) {
    const { register, handleSubmit, errors } = useForm();

    const onSubmit = data => {
        console.log(data);
        
        axios({
            method: 'post',
            url: 'http://localhost/sanrafa-master/enviar_datos2.php',
            data: data
          })
          .then(function (resp) {
            console.log(resp);
            
          });
    }
    console.log(errors);


    return (
        <div className="container">
            <div className="jumbotron">
                <h1>Formulario</h1>
            </div>
            <form onSubmit={handleSubmit(onSubmit)}>
            <div className="input-group mb-3">
                <div className="input-group-prepend">
                    <label className="input-group-text" htmlFor="selTipo">Seleccione el tipo de negocio o servicio:</label>
                </div>
                <select
                    className="custom-select"
                    id="selTipo"
                    name="idTipo"
                    ref={register({ required: true })}
                >
                    <option value="0">Seleccione un opción</option>
                    {
                        props.arrayTipo.map((item,i)=>                            
                        (
                            <option key={"tipo"+i} value={item.id}> {item.tipo} </option>
                        ))
                    }
                </select>
            </div>

            <div className="input-group mb-3">
                <div className="input-group-prepend">
                    <span className="input-group-text" id="spnNombre">Nombre comercial</span>
                </div>
                <input
                    type="text"
                    className="form-control"
                    placeholder="Nombre del comercio o establecimiento"
                    id="selTipo"
                    name="nombre"
                    ref={register({ required: true })}
                />
            </div>

            <div className="row">
                <div className="col-sm-6">
                    <div className="input-group mb-3">
                        <div className="input-group-prepend">
                            <span className="input-group-text" id="spnTelefono">Teléfoono</span>
                        </div>
                        <input
                            type="text"
                            className="form-control"
                            placeholder="Número de teléfono"
                            id="txtTelefono"
                            name="telefono"
                            ref={register({ required: true })}
                        />
                    </div>
                </div>

                <div className="col-sm-6">
                    <div className="input-group mb-3">
                        <div className="input-group-prepend">
                            <span className="input-group-text" id="spnHorario">Horario</span>
                        </div>
                        <input
                            type="text"
                            className="form-control"
                            placeholder="Horario"
                            id="txtHorario"
                            name="horario"
                            ref={register({ required: true })}
                        />
                    </div>
                </div>


            </div>

            
                    <div className="input-group mb-3">
                        <div className="input-group-prepend">
                            <span className="input-group-text" id="spnDireccion">Dirección</span>
                        </div>
                        <input
                            type="text"
                            className="form-control"
                            placeholder="Dirección"
                            id="txtDireccion"
                            name="direccion"
                            ref={register({ required: true })}
                        />
                    </div>
                

                    <div className="input-group mb-3">
                        <div className="input-group-prepend">
                            <span className="input-group-text" id="spnDireccion">Detalles del servicio</span>
                        </div>
                        <input
                            type="text"
                            className="form-control"
                            placeholder="Detalles"
                            id="txtDetalle"
                            name="detalle"
                            ref={register({ required: true })}
                        />
                    </div>

                    <div className="input-group mb-3">
                        <div className="input-group-prepend">
                            <span className="input-group-text" id="spnDireccion">Persona de contacto</span>
                        </div>
                        <input
                            type="text"
                            className="form-control"
                            placeholder="Persona que a cargo del negocio"
                            id="txtContacto"
                            name="contacto"
                            ref={register({ required: true })}
                        />
                    </div>
                



            <button type="submit" className="btn btn-success btn-lg btn-block" > Enviar </button>

        </form >
        </div>
        
    );

}


export default Form1;