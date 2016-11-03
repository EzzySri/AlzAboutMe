var ready;
$(document).ready(function() {
    
    $('#menubutton').show();
    $('#menu').hide();
    $('a#menubutton').click(function (e) {
        e.preventDefault();
        $('div#menu').toggle('slide');
    });

});
