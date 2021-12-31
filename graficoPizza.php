<html>
  <head>
    <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
    <script type="text/javascript">
      google.charts.load("current", {packages:["corechart"]});
      google.charts.setOnLoadCallback(drawChart);
      function drawChart() {
        var data = google.visualization.arrayToDataTable([
          ['Ambiente', 'QuantidadeVendas'],

          <?php
            include_once 'conexao/conexao.php';
            $sql = "SELECT * FROM vendas_por_ambiente";
            $result = mysqli_query($conexao, $sql);

            while($dados = mysqli_fetch_array($result)){
              $ambiente = $dados['ambiente'];
              $quantidadeVendas = $dados['quantidadeVenda'];    
              
        ?>
            ['<?php echo $ambiente ?>', <?php echo $quantidadeVendas ?>],

        <?php
            }
        ?> 
        ]);

        var options = {
          title: 'Total de Vendas por Ambiente',
          is3D: true,
        };

        var chart = new google.visualization.PieChart(document.getElementById('piechart_3d'));
        chart.draw(data, options);
      }
    </script>
  </head>
  <body>
    <div id="piechart_3d" style="width: 900px; height: 500px;"></div>
  </body>
</html>