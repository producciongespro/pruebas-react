import React from 'react';

function Menu(props) {


    return (
        <React.Fragment>
            <div className="row">
                <div className="col-12">
                    <div className="jumbotron">
                        <h1>Buscador</h1>
                    </div>
                </div>
            </div>

            <div className="row">
                <div className="col-4">
                    <div className="input-group mb-3">
                        <div className="input-group-prepend">
                            <span className="input-group-text" id="basic-addon1">Buscador</span>
                        </div>
                        <input onChange={props.handleBuscador} type="text" className="form-control" placeholder="Digite la palbra" aria-label="Username" aria-describedby="basic-addon1" />
                    </div>
                </div>
                <div className="col-8">
                    <div className="form-check form-check-inline">
                        <input onClick={props.handleNombreCientifico} className="form-check-input" type="checkbox" id="inlineCheckbox1" value="option1" />
                        <label className="form-check-label" htmlFor="inlineCheckbox1">Buscar por nombre científico</label>
                    </div>
                </div>
            </div>
        </React.Fragment>
    )

}

export default Menu;