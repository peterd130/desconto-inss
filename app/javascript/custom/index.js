
$(document).ready(function() {
    $(".editar").click(function(){
        window.open(`/proponentes/${$(this).data('id')}/edit`,"_self") 
    });

    $("#novo-prop").click(function(){
        window.open(`/proponentes/new`,"_self") 
    });

    $(".excluir").click(function(){
        $('#cpf-excluir').text($(this).data('cpf'))
        $("#btn-excluir").attr('data-id', $(this).data('id')) 
        $('#excluirModal').modal('show')

    });

    $("#btn-excluir").click(function(){
        $.ajax({
            type: "DELETE",
            url: `/proponentes/${$(this).data('id')}`
          }).done(function() {
            window.open('/', "_self")
          });

    });
})

