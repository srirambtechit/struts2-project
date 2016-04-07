package com.kogent.action;

import java.util.Random;

import org.jfree.chart.JFreeChart;
import org.jfree.chart.axis.NumberAxis;
import org.jfree.chart.axis.ValueAxis;
import org.jfree.chart.plot.XYPlot;
import org.jfree.chart.renderer.xy.StandardXYItemRenderer;

import org.jfree.data.xy.XYSeries;
import org.jfree.data.xy.XYSeriesCollection;

import com.opensymphony.xwork2.ActionSupport;

public class ChartAction extends ActionSupport {

	private JFreeChart chart;

	public String execute() throws Exception {
		// chart creation logic...
		XYSeries dataSeries = new XYSeries(new Integer(1)); 
		for (int i = 0; i <= 100; i++) {
			
			dataSeries.add(i, new Random().nextInt(50));
		}
		
		XYSeriesCollection xyDataSet = new XYSeriesCollection(dataSeries);

		ValueAxis xAxis = new NumberAxis("Marks");
		ValueAxis yAxis = new NumberAxis("Age");
    	chart =
			new JFreeChart("Chart Title", JFreeChart.DEFAULT_TITLE_FONT,
				new XYPlot(xyDataSet,xAxis, yAxis,
						new StandardXYItemRenderer(StandardXYItemRenderer.LINES)),
				false);
		chart.setBackgroundPaint(java.awt.Color.white);

		return super.SUCCESS;
	}

	public JFreeChart getChart() {
		return chart;
	}

}