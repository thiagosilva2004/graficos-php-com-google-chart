<head>
  <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
  <script type="text/javascript">
    google.charts.load('current', { 'packages': ['bar'] });
    google.charts.setOnLoadCallback(drawChart);

    function drawChart() {
      var data = google.visualization.arrayToDataTable([
        ['Produtos', 'QuantidadeVendas', 'Preço', 'Faturamento'],

        <?php
            include_once 'conexao/conexao.php';
            $sql = "SELECT * FROM vendas";
            $result = mysqli_query($conexao, $sql);

            while($dados = mysqli_fetch_array($result)){
              $nomeProduto = $dados['produto'];
              $preco = $dados['preco'];
              $quantidadeVendas = $dados['quantidadeVendas'];
              $faturamento = $preco * $quantidadeVendas;           
              
        ?>

        ['<?php echo $nomeProduto ?>', '<?php echo $quantidadeVendas ?>', <?php echo $preco ?>, <?php echo $faturamento ?>],

        <?php
            }
        ?>
      ]);

      var options = {
        chart: {
          title: 'Vendas dos produtos',
          subtitle: '2015-2021',
        },
        bars: 'horizontal' // Required for Material Bar Charts.
      };

      var chart = new google.charts.Bar(document.getElementById('barchart_material'));

      chart.draw(data, google.charts.Bar.convertOptions(options));
    }
  </script>
</head>

<body>
  <div id="barchart_material" style="width: 1000px; height: 600px;"></div>
</body>

</html>