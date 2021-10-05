<?php
    // salvar na pasta form1 www

    /*  Variavel
        Espaco de memoria, que damos um nome,
        que consegue armazenar algum tipo de dado (valor),
        que pode ser alterado (por isso se chama de variavel);

    */

    $ano = 2021;
    $imposto = 547.29;
    $nome= "Ana Santos";

    /*  Regras de nomes de variaveis
        - Devem cmecar com o simbolo $ (cifrao)
        - primeiro caractere depois do cifrao, obrigatoriamente uma letra ou um sublinhado
        - NAO PODE TER ESPACO EM NOME DE VARIAVEL
        - NÃO PODE TER CARACTERES ACENTUADOS (ç, ã, é, õ, ú, ä, ê, etc.)
		- NÃO PODE TER CARACTERES ESPECIAIS (*, /, -, +, ', ", $, %, (, ),  #, @)
		- Minúsculo é diferente de maiúsculo

    */

    $SALARIO = 15297.20; // separador de casa decimal é o ponto ( padrao americano)
    $premio  = 1820.12;
    $bonus   = 982.20;
    $periodo = 2;

    $salarioBruto = $salario +
    $premio +
    ($bonus * $periodos);

echo "<h2>FOLHA DE PAGAMENTO</h2>";
echo "<h3> <i> <u>Proventos</u></i></h3>";

?>