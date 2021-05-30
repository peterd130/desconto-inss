var jQueryScript = document.createElement('script');  
jQueryScript.setAttribute('src','https://cdnjs.cloudflare.com/ajax/libs/jquery.mask/1.14.15/jquery.mask.min.js');
document.head.appendChild(jQueryScript);

$(document).ready(function() {
    $( "#proponente_salario" ).on('input', function() {
        $.ajax({
            type: "POST",
            data: {
                'salario': this.value
            },
            url: '/calculardesconto',
            success: function (data) {
                $( "#proponente_desconto" ).val(data.desconto)
            },
          });
    });
    
})