import React from 'react';

function Menu (props) {
    

    return (
        <div className="col-12">
            <button id={0} onClick={props.handleMontarComponentes}  className="btn btn-success m-2" > Gráfico 1 </button>
            <button id={1} onClick={props.handleMontarComponentes}  className="btn btn-success m-2" > Gráfico 2 </button>
            <button id={2} onClick={props.handleMontarComponentes}  className="btn btn-success m-2" > Gráfico 2 </button>
        </div>
    )
}

export default Menu;