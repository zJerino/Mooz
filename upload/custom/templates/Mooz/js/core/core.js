toastr.options = {
    progressBar: true,
    closeButton: true,
	timeOut: 5000,
	extendedTimeOut: 10000,
	positionClass: 'toast-bottom-left'
};

function URLBuild(path) {
    return siteURL + path;
}

function redirect(url) {
    window.location.href = url;
}

function copy(element) {
    var $temp = $('<input>');
    $('body').append($temp);
    $temp.val($(element).text()).select();
    document.execCommand('copy');
    $temp.remove();
	toastr.success(copied);
}

$(function() {
    if (loadingTime !== '') {
        $('#page_load').html(loadingTime);
        $('#Page_load2').text(loadingTime);
    }
});