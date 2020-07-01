<?php
    header("Content-type: text/css; charset: UTF-8");
    $mz_styles = file_get_contents('../../settings/styles.json');
    $mz_stylesd = json_decode($mz_styles, true);
    print($mz_stylesd['FUENTE']);
    
    print('
:root{
    ');
    if (isset($mz_stylesd['PRIMARY_OP']) && $mz_stylesd['PRIMARY_OP'] == '0') {
        echo '--primary: '.$mz_stylesd['PRIMARY_1'].' !important;';
    } else {
        echo '--primary: linear-gradient(to right, var(--color1), var(--color2)) !important;';
    }
    print('
    --color1: '.$mz_stylesd['PRIMARY_1'].' !important;
    --color2: '.$mz_stylesd['PRIMARY_2'].' !important;
    --secondary: '.$mz_stylesd['SECONDARY'].' !important;
    --body: '.$mz_stylesd['BODY'].' !important;
    --hicons: '.$mz_stylesd['HICONS'].' !important;
    --success: '.$mz_stylesd['SUCCESS'].' !important;
    --info: '.$mz_stylesd['INFO'].' !important;
    --warning: '.$mz_stylesd['WARNING'].' !important;
    --danger: '.$mz_stylesd['DANGER'].' !important;
    --text-1: '.$mz_stylesd['F_1'].' !important;
    --text-2: '.$mz_stylesd['F_2'].' !important;
    --text-3: '.$mz_stylesd['F_3'].' !important;
    --text-4: '.$mz_stylesd['F_4'].' !important;
    --cardb: '.$mz_stylesd['CARD_B'].' !important;
    --cardf: '.$mz_stylesd['CARD_F'].' !important;
    --FONT_SIZE: '.$mz_stylesd['SFUENTE'].' !important;
}
');
?>

:root{--fdark:#333;--flight:#fff;--radius:5px;--mz-font-family:-apple-system,BlinkMacSystemFont,'Segoe UI','Roboto','Helvetica Neue',Arial,sans-serif}body{background-color:var(--body);height:100vh}.content-wrapper{background-color:var(--body)}@media (max-width:976px){body{font:13px}}.navbar-nav .nav-link{font-size:11px}.navbar-brand{font-size:14px;font-weight:700;height:0}.navbar-nav .nav-link{font-size:11px;height:auto;padding:23px 10px}.normal{background-color:inherit;color:#424242}a.normal{background-color:inherit;color:inherit}a.normal:focus,a.normal:hover{background-color:inherit;color:inherit;opacity:.6;text-decoration:none;transition:.4s}.server-status-icon{transition:1.5s}.tox-tinymce{border:1px solid #94949421!important;border-radius:6px!important;background-color:transparent!important}.bheader{margin-bottom:25px;padding:60px 0 80px 0;background-position:center;background-repeat:no-repeat;background-size:cover;-webkit-clip-path:polygon(100% 0,100% 90%,50% 100%,0 90%,0 0);clip-path:polygon(100% 0,100% 90%,50% 100%,0 90%,0 0);box-shadow:none;margin-bottom:25px;background-image:url(/Nms/custom/templates/Mooz/img/Banner.png);position:sticky;height:347px;width:100%}.encima:hover{background-color:rgba(67,67,67,.25)}.encima{padding:4px 5px;margin:0;font-size:14px;transition:.4s}.profile-banner{border-radius:15px;height:225px;padding:25px 5px}.profile-banner .img-thumbnail{width:100px;border-radius:50%;height:100px}#navbar.sticky{position:fixed;font-size:24px;line-height:48px;height:48px;width:100%;z-index:999;background:#000;text-align:left;padding-left:20px}.footer{font-size:12px;background:#0c0c0c;border-top:solid 3px var(--color1);padding:25px 0 0 0;position:absolute;width:100%;margin-top:auto}footer .row{margin:0}footer .col{margin-bottom:5px}footer .row .col-12{background-color:rgba(43,43,43,.15);padding:12px 0}.footer h1{margin-top:0;color:#d2d2d2;margin-bottom:18px;font-size:13pt;font-weight:600}.footer p{margin:0;line-height:25px;color:#888}.transparente{background-image:none!important}#toast-container{width:100%}#toast-container .toast-close-button{color:#000;opacity:.4}.emojionearea,.emojionearea.form-control{border-radius:10px}#toast-container .toast-close-button:focus,#toast-container .toast-close-button:hover{color:#000;opacity:.6}.tox-toolbar{align-self:center}#toast-container .toast{padding:1rem 1.5rem;background:var(--cardb);background-image:none!important;color:rgba(0,0,0,.68);border:none;border-radius:6px;box-shadow:0 2px 3px 0 rgba(31,31,31,.25);cursor:default;opacity:1;transition:.5s all ease}#toast-container .toast:hover{padding:1rem 1.5rem;background: var(--cardb);background-image:none!important;color:var(--text-1);border:none!important;border-radius:6px;box-shadow:0 2px 3px 0 rgba(31,31,31,.25)!important;cursor:default;opacity:1;transition:.5s all ease}#toast-container .toast-success{border-bottom:solid 2px var(--success)}#toast-container .toast-success .toast-progress{background:var(--success)}#toast-container .toast-error{border-bottom:solid 2px var(--danger)}#toast-container .toast-error .toast-progress{background:var(--danger)}#toast-container .toast-warning .toast-progress{background:var(--warning)}#toast-container .toast-info .toast-progress{background:var(--info)}#toast-container .toast:hover{-webkit-box-shadow:0 1px 3px 0 #bababb,0 0 1px 1px #bababb;box-shadow:0 1px 3px 0 #bababb,0 0 1px 1px #bababb;cursor:default}@media (max-width:576px){#toast-container .toast{width:calc(100% - 24px)}}#tinymce .spoiler,.spoiler{color:rgba(0,0,0,.87);border-radius:.28571429rem;-webkit-box-shadow:0 0 0 1px rgba(34,36,38,.22) inset,0 0 0 0 transparent;box-shadow:0 0 0 1px rgba(34,36,38,.22) inset,0 0 0 0 transparent;border:none}#tinymce .spoiler-toggle,.spoiler-toggle{color:rgba(0,0,0,.87)}#tinymce .spoiler-text,.spoiler-text{color:rgba(0,0,0,.87)}::selection{background:#656565;color:#121212}.carousel-inner img{height:230px;border-radius:6px;box-sizing:content-box;box-shadow:0 0 4px 0 rgba(0,0,0,.14),0 3px 4px 0 rgba(0,0,0,.12),0 1px 5px 0 rgba(0,0,0,.2);margin-bottom:25px}@media (min-width:992px){.carousel-inner img{height:250px;margin-bottom:25px}.carousel-inner{padding:0 20px}}#block-img img{display:none}.tox.tox-tinymce.tox-platform-touch{height:130px!important}.userbar{display:inline-flex;font-size:12px;flex:auto;width:100%;border-bottom:solid 2px rgba(9,9,9,.05);list-style:none;color:#fff}.userbar .nav-item{cursor:pointer}.dropdown-menu.show::before{border-radius:12px}@media (max-width:768px){.footer-container{text-align:-webkit-center;margin-bottom:35px}}.negro,.negro *{background-color:#222;color:#e6e6e6;border-color:#e6e6e6}.switch{align-self:flex-end;margin:.9375rem}.inner-switch{display:inline-block;cursor:pointer;border:1px solid #555;border-radius:1.25rem;width:3.125rem;text-align:center;font-size:1rem;padding:.1875rem;margin-left:.3125rem}::-webkit-scrollbar{width: 0.5rem;position: absolute;background: 0 0;}::-webkit-scrollbar-thumb{background:#cecece;border-radius:55px}::-webkit-scrollbar-thumb:hover{background:#bababa;border-radius:55px}.texto-grande{font-size:100px}.wrapper-img::before{content:"\f111";font-family:"Font Awesome 5 Free";font-weight:900;position:absolute;transform:translate(21px,20px);z-index:999999999999;color:#8bc34a;font-size:10px}.wrapper-img{border-radius:50%;height:32px}.wrapper-img img{display:block;width:100%;height:100%}foreignObject{border-radius:50%}foreignObject img{border-radius:50%;-o-object-fit:cover;object-fit:cover;pointer-events:none}figure{position:relative}figure img{top:0;left:0;position:absolute;max-height:100%}figure:before{padding-top:69.25%}// (554/800) * 100% .valeehhta{position:absolute;transform:translate(0,1px);right:10px}.ms-avatar{width:35px;height:35px;background-color:#e1e1e1;position:relative;vertical-align:middle;text-align:center;margin:0;margin-right:5px;padding:0;-webkit-border-radius:50%;-moz-border-radius:50%;-ms-border-radius:50%;-o-border-radius:50%;border-radius:50%}.ms-avatar .ms-avatar-img, .ms-avatar img {
    display: block;
    width: 100%;
    height: 100%;
    margin: 0 auto;
    -webkit-border-radius: 50%;
    -moz-border-radius: 50%;
    -ms-border-radius: 50%;
    -o-border-radius: 50%;
    border-radius: 50%;
}.ms-avatar .ms-text{font-size:1.2rem;line-height:55px;font-weight:700}.ms-avatar.ms-small{width:35px;height:35px}.ms-avatar.ms-small .ms-text{font-size:.8rem;line-height:35px}.ms-avatar.ms-medium{width:75px;height:75px}.ms-avatar.ms-medium .ms-text{font-size:2rem;line-height:75px}.ms-avatar.ms-medium .ms-status{width:15px;height:15px;right:4px;bottom:4px}.ms-avatar.ms-large{width:95px;height:95px}.ms-avatar.ms-large .ms-text{font-size:3rem;line-height:95px}.ms-avatar.ms-large .ms-status{width:20px;height:20px;right:2px;bottom:2px}.ms-avatar .ms-status{width:13px;height:13px;position:absolute;right:0;top:23px;background-color:#e1e1e1;border:2px solid #fff;overflow:hidden;-webkit-border-radius:50%;-moz-border-radius:50%;-ms-border-radius:50%;-o-border-radius:50%;border-radius:50%}.ms-avatar .ms-status.ms-info{background-color:#219ced}.ms-avatar .ms-status.ms-success{background-color:#3ab656}.ms-avatar .ms-status.ms-error{background-color:#e04540}.ms-avatar .ms-status.ms-warning{background-color:#f9bf10}.ms-avatar.ms-shadow{-webkit-box-shadow:rgba(0,0,0,.4) 0 0 10px;-moz-box-shadow:rgba(0,0,0,.4) 0 0 10px;box-shadow:rgba(0,0,0,.4) 0 0 10px}.popover-body .ms-status{bottom:0;top:74px;left:68px;display:none}.context-menu{position:absolute;background:#fff;padding-left:10px;padding-right:10px;border-radius:10px;box-shadow:0 5px 5px 0 #ccc}#quitadordepm{padding:0;margin:0}._asduasdi{align-self:center;text-align:center}img.emoji{width:1.2rem;margin:3px 3px 4px 1px}img.lazy{font-size:0;transition:.4s}#alttext{font-size:0}.forocard{padding:4px 5px;margin:0;font-size:14px}img{WIDTH:100%;height:auto}#message{background-color:#d2d2d24a;border-radius:5px;margin:3px -10px;white-space:normal;height:auto;position:unset;display:block}#message p{margin:10px 5px}span#AutorDeMensaje{float:left;display:block}body#tinymce.mce-content-body{color:#fff}p{color:var(--text-1)}blockquote.blockquote{font-size:75%;background-color:#ffffff0d;border-radius:6PX;padding:1px 10px;border-left:3px solid var(--color1)}.ui.popup{opacity:.95}tbody tr{border-radius:5px}


<?php
    if (isset($mz_stylesd['PRIMARY_OP']) && $mz_stylesd['PRIMARY_OP'] == '0'){
?>
    .blockquote{
        border-left:.3125rem solid var(--primary);
    }
    .badge-primary{
        background: var(--primary);
    }
    .page-link:focus,.page-link:hover{
        background: var(--primary)
    }
    .page-link.active,.page-link:active{
        background:var(--primary)
    }
    .page-item.active .page-link{
        background:var(--primary)
    }
    .btn.disabled,.btn:disabled{
        background: var(--primary);
    }
    .btn-primary{
        background:var(--primary)
    }
    .btn-flat-primary,.btn-flat-primary:active,.btn-flat-primary:focus,.btn-flat-primary:hover,.btn-outline-primary,.btn-outline-primary:active,.btn-outline-primary:focus,.btn-outline-primary:hover{
        color:var(--primary)
    }
    .asdasasdasdasdadsas:after,.card-body .card-header .card-title:after{
        background:var(--primary);
    }
    .card-news .card-header{
        background:var(--primary);
    }
    .card.border-primary{
        border: solid 1px var(--primary);
        box-shadow: none;
    }
    .card-header{
        background:var(--primary)
    }
    table{
        width: 100% !important;
    }
    .btn-flat-primary, .btn-flat-primary:active, .btn-flat-primary:focus, .btn-flat-primary:hover, .btn-outline-primary, .btn-outline-primary:active, .btn-outline-primary:focus, .btn-outline-primary:hover {
        color: var(--text-1);
    }
    .bg-primary{
        background: var(--primary);
    }
<?php
    } else {
?>
//Hola 1
<?php
    }
?>
.card {
    border-radius: 5px;
}
body, label, input {
    color: var(--text-1) !important;
    font-size: <?php echo $mz_stylesd['SFUENTE'];?> !important;
    <?php echo $mz_stylesd['FUENTE2'];?>;
}
.alert-primary {
    background-color: var(--cardb) !important;
}
.spoiler {
    background-color: var(--cardf);
    border-left: 3px solid var(--color1);
    box-shadow: none;
}
.text-muted {
    color: var(--text-2) !important;
}
.nav-pills .nav-link {
    color: var(--text-1) !important;
}
.nav-pills .nav-link.active{
    background: var(--primary) !important;
}
    .card-body, .list-group-item, .list-group-item:hover, .breadcrumb{
        background-color: var(--cardb) !important;
        color: var(--text-1);
    }
    .ui.popup, .ui.bottom.left.popup:before {
        background-color: var(--cardb);
        color: var(--text-1) !important;
    }
    .ui.popup{
        border: 1px #9c9c9c61 solid;
    }
    .tox .tox-edit-area__iframe, .tox .tox-statusbar, .tox .tox-toolbar, .tox-tinymce, .tox .tox-toolbar__group:not(:last-of-type), .tox .tox-tbtn svg, .tox .tox-tbtn--bespoke .tox-tbtn__select-label, .mce-content-body {
        background-color: var(--cardb) !important;
        color: var(--text-1) !important;
        border: 0px solid #94949421 !important;
        border-radius: 6px !important;
        fill:  var(--text-1) !important;
    }
    
    .breadcrumb-item.active {
        color: var(--text-1);
    }
    .card-footer {
        background-color: var(--cardf);
    }
    input.btn {
        color: var(--text-3) !important;
    }

    .navbar-nav .nav-link{
        cursor: pointer;
    }
    avatar>img {
    width: 2.5rem;
    height: 2.5rem;
    border-radius: 50%;
}
#ChatMensajes {
    margin-bottom: 12px;
    background-color: rgba(148, 148, 148, 0.10196078431372549);
    border-radius: 6px;
    height: 250px;
    max-width: 100%;
    overflow-y: scroll;
    max-height: 13rem;
}
.hicons {
    color: var(--hicons)
}