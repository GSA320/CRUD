<nav class="navbar navbar-expand-lg bg-white">
            <div class="container-fluid">
                <a href="index.jsp"><img class="lougo" src="https://s3-sa-east-1.amazonaws.com/projetos-artes/fullsize%2F2015%2F03%2F18%2F02%2FWDL-Logo-e-Papelaria-51606_1089_071909294_494384043.jpg" style="width: 50px; border-radius: 5px; " alt="logo" href="index.jsp"/></a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
              </button>
              <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav">
                  <li class="nav-item">
                    <a class="nav-link" aria-current="page" href="#local">Sobre nós</a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link" href="#local">Contato</a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link " data-bs-toggle="modal" data-bs-target="#avaliar" style="cursor: pointer">Avaliar</a>
                    <div class="modal fade" id="avaliar" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h1 class="modal-title fs-5" id="exampleModalLabel">O quanto fomos úteis?</h1>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
        <div class="modal-body" style="margin-left: 50px; margin-right: 50px;">
                        <form action="#" method="POST">
                            <div class="mb-3" style="margin-left: -30px">
                                <ul class="avaliacao">
                                  <li class="star-icon ativo" data-avaliacao="1"></li>
                                  <li class="star-icon" data-avaliacao="2"></li>
                                  <li class="star-icon" data-avaliacao="3"></li>
                                  <li class="star-icon" data-avaliacao="4"></li>
                                  <li class="star-icon" data-avaliacao="5"></li>
                                </ul>
                                <script>
                                    var stars = document.querySelectorAll('.star-icon');
                                    document.addEventListener('click', function(e){
                                      var classStar = e.target.classList;
                                      if(!classStar.contains('ativo')){
                                        stars.forEach(function(star){
                                          star.classList.remove('ativo');
                                        });
                                        classStar.add('ativo');
                                        console.log(e.target.getAttribute('data-avaliacao'));
                                      }
                                    });
                                </script>
                            </div>
                            <button type="button" class="btn btn-danger" data-bs-dismiss="modal" style="margin-left: 27%;">Cancelar</button>
                            <button type="submit" class="btn btn-success">Salvar</button>
                        </form>
                        </div>
                      </div>
                    </div>
                  </div>
                  </li>
                  <li class="nav-item">
                      <a class="nav-link" data-bs-toggle="modal" data-bs-target="#exampleModal" style="cursor: pointer">Receber Novidades</a>
                    
                    <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h1 class="modal-title fs-5" id="exampleModalLabel">Deixe seu Nome e Email para contato</h1>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
        <div class="modal-body" style="margin-left: 50px; margin-right: 50px;">
                        <form action="CADASTRACustomer.jsp" method="POST">
                            <div class="mb-3">
                                <label class="form-label">Nome:</label>
                                <input type="text" class="form-control" name="nome" placeholder="Informe seu nome" />
                            </div>
                            <div class="mb-3">
                                <label class="form-label">Email:</label>
                                <input type="email" class="form-control" name="email" placeholder="Informe seu Email" />
                            </div>
                            <button type="button" class="btn btn-danger" data-bs-dismiss="modal">Cancelar</button>
                            <button type="submit" class="btn btn-success">Enviar</button>
                        </form>
                        </div>
                      </div>
                    </div>
                  </div>
                  </li>
                </ul>
              </div>
            </div>
          </nav>