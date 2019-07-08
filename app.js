$(function() {
  $.ajax({
    url: "http://localhost/chart_data.php",
    type: "GET",
    success: function(data) {
      chartData = data;
      var chartProperties = {
        caption: "10",
        xAxisName: "Player",
        yAxisName: "Wickets taken",
        rotatevalues: "1",
        theme: "zune"
      };
      apiChart = new FusionCharts({
        type: "pie2d",
        renderAt: "chart-container",
        width: "560",
        height: "340",
        dataFormat: "json",
        dataSource: {
          chart: chartProperties,
          data: chartData
        }
      });
      apiChart.render();
    }
  });
});