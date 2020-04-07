$(document).ready(function () {
  var button = document.getElementById("start");

  button.addEventListener("click", function (event) {
    // Disparition du bouton remplir
    $("#launch").css("display", "none");

    // Envoi de la requete AJAX pour traitement PHP
    $.ajax({
      url: "fillDatabase.php",
      type: "GET",
      dataType: "text",
      success: function (code_html, statut) {
        // $(code_html).appendTo("#liste");
        alert("Votre base de données a bien été remplie de données !");
      },

      error: function (resultat, statut, erreur) {},

      complete: function (resultat, statut) {},
    });

    // Requête AJAX pour récupérer la liste des amis
    $.ajax({
      url: "liste.php",
      type: "GET",
      dataType: "JSON",
      success: function (data, statut) {
        let startOfTab = `
        <table class="table">
            <thead class="thead-dark">
                <tr>
                    <th scope="col">Nom</th>
                    <th scope="col" class="cls">Prénom</th>
                    <th scope="col" class="cls">Adresse</th>
                    <th scope="col" class="cls">Téléphone</th>
                    <th scope="col">Actions</th>
                    <tr>
                </thead>
            <tbody>
        `;

        // $(table).appendTo("#liste");
        let textToPut = `<h1 class="mb-3">Liste des amis d'Eddy Malou : </h1>`;
        for (let i = 0; i < data.length; i++) {
          textToPut += `
            <tr>
                <th scope="row">${data[i].lastname}</th>
                <td class="cls">${data[i].firstname}</td>
                <td class="cls">${data[i].post_address}</td>
                <td class="cls">${data[i].phone}</td>
                <td>
                    <button id="view" class="btn btn-info my-2 mr-2" data-toggle="modal" data-target="#modal${data[i].id}">
                        <i class="fas fa-eye"></i>
                    </button>
                    <button id="delete" class="btn btn-danger my-2" data-toggle="modal" data-target="#modalDeConfirmation${data[i].id}">
                        <i class="fas fa-trash"></i>
                    </button>
                </td>
                <div class="modal fade" id="modal${data[i].id}" tabindex="-1" role="dialog" aria-labelledby="label${data[i].id}" aria-hidden="true">
                    <div class="modal-dialog" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                            <h5 class="modal-title" id="label${data[i].id}">${data[i].lastname} ${data[i].firstname}</h5>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                            </div>
                            <div class="modal-body">
                            <p><em><i class="fas fa-map-marked-alt" mr-4"></i> ${data[i].post_address}</p>
                            <p><em><i class="fas fa-phone mr-2"></i></em> ${data[i].phone}</p>
                            <hr>
                            <h4>Et voici sa citation préférée d'Eddy Malou !</h4>
                            <blockquote>${data[i].quote}</blockquote>
                            </div>
                            <div class="modal-footer">
                            <button type="button" class="btn btn-warning" data-dismiss="modal">
                                <i class="fas fa-times"></i>
                            </button>
                            <button id="confirm_delete" type="button" class="btn btn-danger">
                                <i class="fas fa-trash"></i>
                            </button>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="modal fade" id="modalDeConfirmation${data[i].id}" tabindex="-1" role="dialog" aria-labelledby="label${data[i].id}" aria-hidden="true">
                    <div class="modal-dialog" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                            <h5 class="modal-title" id="label${data[i].id}">Voulez-vous vraiment supprimer cet ami?</h5>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                            </div>
                            <div class="modal-body">
                            <p>
                                <em>AVERTISSEMENT :</em> Cette action est irréversible !
                            </p>
                            <p>
                                <i>Merci de confirmer</i>
                            </p>
                            </div>
                            <div class="modal-footer">
                            <button type="button" class="btn btn-warning" data-dismiss="modal">
                                <i class="fas fa-times"></i>
                            </button>
                            <button id="final_delete" data-id=${data[i].id} type="button" class="btn btn-danger">
                                <i class="fas fa-trash"></i>
                            </button>
                            </div>
                        </div>
                    </div>
                </div>
            </tr>`;
        }
        let endOfTheTab = `</tbody></table>`;
        let table = startOfTab + textToPut + endOfTheTab;
        $(table).appendTo("#liste");

        // Suppression d'un ami
        $("#final_delete").click(function () {
          const idClicked = $(this).attr("data-id");
          $.ajax({
            url: "removeItem.php",
            type: "GET",
            data: idClicked,
            dataType: "text",
            success: function (result, statut) {
              alert(result);
            },

            error: function (resultat, statut, erreur) {},

            complete: function (resultat, statut) {},
          });
        });
      },

      error: function (resultat, statut, erreur) {},

      complete: function (resultat, statut) {},
    });
  });
});
