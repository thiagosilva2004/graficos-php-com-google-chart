<?php
    // função para gerar uma cor aleatoria
    function random_color($start = 0x000000, $end = 0xFFFFFF) {
        return sprintf('#%06x', mt_rand($start, $end));
     }
?>

<!DOCTYPE html>
<html lang="en">
<head>
<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
  <script type="text/javascript">
    google.charts.load("current", {packages:['corechart']});
    google.charts.setOnLoadCallback(drawChart);
    function drawChart() {
      var data = google.visualization.arrayToDataTable([
        ["Cliente", "Quantidade de compra", { role: "style" } ],

        <?php
            include_once 'conexao/conexao.php';
            $sql = "SELECT * FROM compra";
            $result = mysqli_query($conexao, $sql);

            while($dados = mysqli_fetch_array($result)){
              $cliente = $dados['cliente'];
              $quantidadeCompra = $dados['quantidade'];          
              $cor = random_color();
        ?>

        ['<?php echo $cliente ?>', <?php echo $quantidadeCompra ?>, "color: <?php echo $cor ?>"],

        <?php
            }
        ?>

        // ["Copper", 8.94, "#b87333"],
      ]);

      var view = new google.visualization.DataView(data);
      view.setColumns([0, 1,
                       { calc: "stringify",
                         sourceColumn: 1,
                         type: "string",
                         role: "annotation" },
                       2]);

      var options = {
        title: "Compra pelos clientes",
        width: 800,
        height: 600,
        bar: {groupWidth: "95%"},
        legend: { position: "none" },
      };
      var chart = new google.visualization.ColumnChart(document.getElementById("columnchart_values"));
      chart.draw(view, options);
  }
  </script>

    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <div id="columnchart_values" style="width: 900px; height: 300px;"></div>
</body>
</html>