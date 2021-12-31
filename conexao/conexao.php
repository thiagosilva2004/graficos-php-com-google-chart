<?php
    define('SERVIDOR', 'localhost');
    define('BD','testando_graficos_bd');
    define('USER', 'root');
    define('SENHA', '');

    // echo SERVIDOR;

    $conexao = mysqli_connect(SERVIDOR, USER, SENHA, BD);
?>