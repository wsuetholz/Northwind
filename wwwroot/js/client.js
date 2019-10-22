$(function(){
    //alert("Hello World");

    var toastAudio = new Audio('/media/toast.wav')
    toastAudio.pause();
    toastAudio.currentTime = 0;
    toastAudio.play();

    $('.clickme').on('click', function () {
        var hdr = $(this).prop('title');
        var code = $(this).prop('id');

        $('.toast').toast({ autohide: false }).toast('show');
        $(".toast").data("selectedDiscount", { btnPressed: this.id, header: hdr, discount: code });
        $(".toast-body span").text("Discount Code " + code);
        $(".toast-header strong").text($(".toast").data("selectedDiscount").header);
        //switch (this.id) {
        //    case 'button1':
        //        $(".toast.toast-header").data("test",this.id)
        //        break;
        //    case 'button2':
        //        $(".toast.toast-header").data("test").first = "button2"
        //        break;
        //    case 'button3':
        //        $(".toast.toast-header").data("test").first = "button3"
        //        break;
        //}
    });
    $(document).on('keyup', function (e) {
        if (e.key === 'Escape') {
            $('.toast').toast('hide');
        }
    });

    $("#birthday").datepicker();

});
