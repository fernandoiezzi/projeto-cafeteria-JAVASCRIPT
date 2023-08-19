<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Card�pio</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js" integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.min.js" integrity="sha384-7VPbUDkoPSGFnVtYi0QogXtr74QeVeeIs99Qfg5YCF+TidwNdjvaKZX19NZ/e6oz" crossorigin="anonymous"></script>  
    <link rel="stylesheet" href="css/style.css">
    <link rel="icon" href="img/logo.jpg">
  </head>
  <body>        
<div class="mainnav">
     <div class="divlogo">
     <img class="logo" src="img/logo.jpg" width= "90 px" height=" 90px">
     </div> 
      <div class="links">
     <ul>
      <li><a href="index.jsp">Index</a></li>
          <li><a href="quemsomos.jsp">Quem Somos</a></li>
         <li><a href="cardapio.jsp">Card�pio</a></li>
         <li><a href="faleconosco.jsp">Fale Conosco</a></li>
         </ul>  
   </div>  
</div>
    <div class="cardapioslide">
    <div id="carouselExampleCaptions" class="carousel slide" data-bs-ride="false">
      <div class="carousel-indicators">
        <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
        <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="1" aria-label="Slide 2"></button>
        <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="2" aria-label="Slide 3"></button>
         <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="3" aria-label="Slide 4"></button>
         <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="4" aria-label="Slide 5"></button>
      </div>
      <div class="carousel-inner">
        <div class="carousel-item active">
          <img src="img/foto1.jpg" class="d-block w-100" alt="..." height="600" width="500">
          <div class="carousel-caption d-none d-md-block">
            <div class="textslide">
            <h5>Caf� expresso - R$ 10,00</h5>
            <p>O expresso n�o � um gr�o diferente: ele � feito com os mesmos gr�os que o caf� tradicional � feito. Por�m, o que difere em gosto e aroma � o m�todo de prepar�-lo: ele � feito atrav�s da passagem de �gua quente (n�o fervendo) sob alta press�o pelo gr�o mo�do.</p>
          </div>
          </div>
        </div>
        <div class="carousel-item">
          <img src="img/foto2.jpg" class="d-block w-100" alt="..." height="600" width="500">
          <div class="carousel-caption d-none d-md-block">
            <div class="textslide">
            <h5>Caf� Cappuccino cremoso - R$ 15,00</h5>
            <p>O capuccino � uma bebida mais incrementada, em compara��o ao famoso cafezinho. Assim, trata-se de uma mistura de caf� com um leite bem cremoso e vaporizado, mais espuma, conforme a receita original italiana. Contudo, no pa�s encontra-se tamb�m a bebida com canela e cacau</p>
          </div>
          </div>
        </div>
        <div class="carousel-item">
          <img src="img/cafecomleite.jpg" class="d-block w-100" alt="..." height="600" width="500">
          <div class="carousel-caption d-none d-md-block">
            <div class="textslide">
            <h5>Caf� com Leite - R$ 4,00</h5>
            <p>Lanche da manh� tradicional de todo brasileiro</p>
            </div>
          </div>
        </div>
        <div class="carousel-item">
          <img src="img/pudim.jpg" class="d-block w-100" alt="..." height="600" width="500">
          <div class="carousel-caption d-none d-md-block">
            <div class="textslide">
            <h5>Pudim com leite condensando - R$ 12,00</h5>
            <p>Seja de leite, de coco ou at� de p�o, uma das sobremesas que mais tem liga��o com brasileiro � o pudim. Apesar de alguns ind�cios apontarem Portugal como seu ber�o, o pudim � um dos orgulhos e paix�es nacionais.</p>
            </div>
          </div>
        </div>
        <div class="carousel-item">
          <img src="img/pao.jpg" class="d-block w-100" alt="..." height="600" width="500">
          <div class="carousel-caption d-none d-md-block">
            <div class="textslide">
            <h5>P�o Salgado - Por Kilo(Kg) R$ 10,00</h5>
            <p>P�o Tradicional feito com trigo colhido, feito de forma caseira e assado em forno � lenha</p>
            </div>
          </div>
      </div>
      <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="prev">
        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
        <span class="visually-hidden">Previous</span>
      </button>
      <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="next">
        <span class="carousel-control-next-icon" aria-hidden="true"></span>
        <span class="visually-hidden">Next</span>
      </button>
    </div>
    </div>
    <footer>
    � 2022 Cafeteria Mineira - Copyright

    </footer>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-u1OknCvxWvY5kfmNBILK2hRnQC3Pr17a+RTT6rIHI7NnikvbZlHgTPOOmMi466C8" crossorigin="anonymous"></script>
 </body>
</html>