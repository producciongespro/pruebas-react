import React from 'react';
import {XYPlot, LineSeries} from 'react-vis';

const Grafico3 = () => {
const data = [
      {x: 0, y: 8},
      {x: 1, y: 5},
      {x: 2, y: 4},
      {x: 3, y: 9},
      {x: 4, y: 1},
      {x: 5, y: 7},
      {x: 6, y: 6},
      {x: 7, y: 3},
      {x: 8, y: 2},
      {x: 9, y: 0}
    ];

    return (
      <div className="col-12">
        <XYPlot height={600} width={600}>
          <LineSeries data={data} />
        </XYPlot>
      </div>
    );
  }

export default Grafico3;