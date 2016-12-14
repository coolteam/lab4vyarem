$(document).ready(function () {
    $.validator.setDefaults({
        errorClass: 'invalid',
        validClass: "valid",
        errorPlacement: function (error, element) {
            $(element)
                .closest("#form1")
                .find("label[for='" + element.attr("id") + "']")
                .attr('data-error', error.text());
        },
        submitHandler: function (form) {
            return true;
        }
    });
    $.validator.addClassRules('firstNumberCssClass', {
        required: true,
        number: true
    });
    $.validator.addClassRules('secondNumberCssClass', {
        required: true,
        number: true
    });
    $.extend($.validator.messages, {
        required: "Це поле обов'язкове для заповнення.",
        number: "Будь-ласка, введіть коректне дійсне число."
    });
    $("#form1").validate();
});