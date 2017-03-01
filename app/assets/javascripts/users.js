//document ready
$(document).on('turbolinks:load', function () {

    var theForm = $('#pro_form')

    var submitBtn = $('#form_signup_btn')

//    set stripe public key
    Stripe.setPlublishableKey($('meta[name="stripe_key"]').attr('content'))

    submitBtn.click(function (event) {
        event.preventDefault();

        var ccNum = $('#card_number').val(),
            cvcNum = $('#card_code').val(),
            expMonth = $('#card_month').val(),
            expYear = $('#card_year').val();

        Stripe.createToken({
            number: ccNum,
            cvc: cvcNum,
            exp_month: expMonth,
            exp_year: expYear
        }, stripeResponseHandler)

    });
});