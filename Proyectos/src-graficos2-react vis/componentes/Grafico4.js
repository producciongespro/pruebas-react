
import React from 'react';
//import ShowcaseButton from '../showcase-components/showcase-button';
import {
  XYPlot,
  XAxis,
  YAxis,
  VerticalGridLines,
  HorizontalGridLines,
  VerticalBarSeries,
  VerticalBarSeriesCanvas,
  LabelSeries
} from 'react-vis';

const greenData = [{nombre: 'A', y: 10}, {nombre: 'B', y: 5}, {nombre: 'C', y: 15}];
//const blueData = [{x: 'A', y: 12}, {x: 'B', y: 2}, {x: 'C', y: 11}];

const labelData = greenData.map((d, idx) => ({
  x: d.nombre,
  y: Math.max(greenData[idx].y)
}));

export default class Grafico4 extends React.Component {
  state = {
    useCanvas: false
  };

  render() {
    const {useCanvas} = this.state;    
    const BarSeries = useCanvas ? VerticalBarSeriesCanvas : VerticalBarSeries;
    return (
      <div>
      
        <XYPlot xType="ordinal" width={300} height={300} xDistance={100}>
          <VerticalGridLines />
          <HorizontalGridLines />
          <XAxis />
          <YAxis />
          <BarSeries className="vertical-bar-series-example" data={greenData} />
          
          <LabelSeries data={labelData} getLabel={d => d.nombre} />
        </XYPlot>
      </div>
    );
  }
}