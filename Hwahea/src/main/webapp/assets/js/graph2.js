/* 성분 구성 차트 */
google.charts.load('current', {packages: ['corechart', 'bar']});
google.charts.setOnLoadCallback(drawStacked);

function drawStacked() {
      var data = google.visualization.arrayToDataTable([
        ['성분','등급 미정', '낮은 위험도', '중간 위험도', '높은 위험도'],
        ['', 1,15,2,1]
      ]);

      var options = {
        width:700,
        height:80,
        bar : {groupWidth:"90%"},
        chartArea: {width: '60%'},
        legend: { position: "none" },
        isStacked: true,
        colors: ['silver', '#3fa8ff', '#ffd400', '#ff0000'],
        display:'inline'
      };
      var chart = new google.visualization.BarChart(document.getElementById('chart_div'));
      chart.draw(data, options);
    }


/* 피부타입별 성분 차트 */
google.charts.load('current', {packages: ['corechart', 'bar']});
google.charts.setOnLoadCallback(drawAnnotations);

function drawAnnotations() {
      var data = google.visualization.arrayToDataTable([
        ['', '좋은 성분', {type: 'string', role: 'annotation'},
         '나쁜 성분', {type: 'string', role: 'annotation'}],
        ['지성 피부', 1, '1', 0 , '0'],
        ['건성 피부', 6, '6', 0, '0'],
        ['민감성 피부', 0, '0', 1, '1']
      ]);

      var options = {
        title: '*숫자 = 해당 성분 개수',
        chartArea: {width: '50%'},
        width:700,
        annotations: {
          alwaysOutside: true,
          textStyle: {
            fontSize: 12,
            auraColor: 'none',
            color: '#555',
            display:'inline'
          }
        },
        hAxis: {
          minValue: 0,
          maxValue:10
        }
      };
      var chart = new google.visualization.BarChart(document.getElementById('type_chart_div'));
      chart.draw(data, options);
    }




/* 별점 차트 */
google.charts.load("current", {packages:["corechart"]});
google.charts.setOnLoadCallback(drawChart);
    function drawChart() {
      var data = google.visualization.arrayToDataTable([
        ["Element", "개수"],
        ["5점", 8],
        ["4점", 50],
        ["3점", 20],
        ["2점", 2],
        ["1점", 3]
      ]);

      var view = new google.visualization.DataView(data);
      view.setColumns([0, 1,
                       { calc: "stringify",
                         sourceColumn: 1,
                         type: "string",
                         role: "annotation" }
                       ]);

      var options = {
        width: 750,
        height: 300,
        bar: {groupWidth: "95%"},
        chartArea: {width: '80%'},
        legend: { position: "none" },
        colors: ['#ffbf00'],
        padding:0
      };
      var chart = new google.visualization.BarChart(document.getElementById("review_chart"));
      chart.draw(view, options);
  }
