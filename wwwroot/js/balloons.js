$(function(){
    //alert("Hello World");
    var animateIn = ["bounceIn", "bounceInDown", "bounceInUp", "bounceInLeft", "bounceInRight", "fadeIn", "fadeInDown", "fadeInUp", "fadeInLeft", "fadeInRight"]
    var animateOut = ["bounceOut", "bounceOutDown", "bounceOutUp", "bounceOutLeft", "bounceOutRight", "fadeOut", "fadeOutDown", "fadeOutUp", "fadeOutLeft", "fadeOutRight"]
    var animateInLen = animateIn.length;
    var removeAnimations = "animated"
    var aniIn = "bounceIn";
    var aniOut = "bounceOut";
    var rnd = Math.floor(Math.random() * 10) + 1;

    for (i = 0; i < animateInLen; i++) {
        removeAnimations = removeAnimations + ' ' + animateIn[i] + ' ' + animateOut[i]
    }

    aniIn = animateIn[rnd];
    aniOut = animateOut[rnd];

    $('.balloons').draggable();
    $('.balloons').each(function(){
        $(this).css('visibility', 'hidden');
    });

    $('.form-check-input').each(function() {
        $(this).prop('checked', false);
    });

    $('.select-color').each(function () {
        var img = $('#' + this.id + 'Img');
        img.removeClass(removeAnimations) 
    });

    $('.select-color').on('change', function () {
        var img = $('#' + this.id + 'Img');
        
        img.css('visibility', 'visible');
        $('#' + this.id).css('visibility', 'visible');
        $(this).is(':checked') ? 
            img.removeClass('animated ' + aniIn + ' ' + aniOut).addClass('animated ' + aniIn) : 
            img.removeClass('animated ' + aniIn + ' ' + aniOut).addClass('animated ' + aniOut)
    });

    $('.select-color').hover(
        function () { $("#happyBirthday").css('color', this.id) },
        function () { $("#happyBirthday").css('color', 'black') }
    );

    $('.select-all').on('change', function () {
        var isChecked = $(this).is(':checked');
        var newCheck = true;
        var newPrompt = "Uncheck All";

        if (isChecked) {
            newCheck = true
            newPrompt = "Check All"
        } else {
            newCheck = false
            newPrompt = "Uncheck All"
        }
        $('.select-color').each(function () {
            $(this).prop('checked', newCheck)
        });
        $('.select-color').trigger('change');
        $('#selectAllLabel').value = newPrompt;
    });

    $('#balloonSubmit').click(function () {
        var anyChecked = false;
        $('.select-color').each(function () {
            $(this).is(':checked') ? anyChecked = true : false
        });
        if (!anyChecked) {
            $('.toast').toast({ autohide: false }).toast('show');
        }
    });
});
