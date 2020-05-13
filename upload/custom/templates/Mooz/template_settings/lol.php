</div>
</div>
<style>
    :root{
        --primary: #346bff;
        --secondary: #10008e;
        --success: #089313;
        --info: #34b1ff;
        --danger: #f00000;
        --light: #cdcdcd;
        --dark: #1c1c1c;
    }
</style>
<link rel="stylesheet" href="{$TEMPLATE.path}css/material.css">
<link rel="stylesheet" href="{$TEMPLATE.path}css/all.min.css">
<link rel="stylesheet" href="{$TEMPLATE.core}plugins/bootstrap-colorpicker/css/bootstrap-colorpicker.min.css">
<link rel="stylesheet" href="{$TEMPLATE.core}plugins/switchery/switchery.min.css">

<script type="text/javascript" src="{$TEMPLATE.path}js/jquery.min.js"></script>
<script type="text/javascript" src="{$TEMPLATE.path}js/popper.min.js"></script>
<script type="text/javascript" src="{$TEMPLATE.path}js/bootstrap.min.js"></script>
<script type="text/javascript" src="{$TEMPLATE.path}js/material.js"></script>
<script type="text/javascript" src="{$TEMPLATE.core}plugins/switchery/switchery.min.js"></script>
{nocache}
<div class="card card-news">
    <div class="card-body">
        <div class="card-header">
            <span class="card-title centro" style="margin: 0">
                {$MOOZ_TEMPLATE}
            </span>
        </div>
        <div class="container">
            <form action="" method="POST">
                <nav>
                    <div class="nav nav-tabs nav-centro" id="nav-tab" role="tablist">
                        <a class="nav-item nav-link active" id="nav-general-tab" data-toggle="tab" href="#nav-general" role="tab" aria-controls="nav-general" aria-selected="true">{$General}</a>
                        <a class="nav-item nav-link" id="nav-estilos-tab" data-toggle="tab" href="#nav-estilos" role="tab" aria-controls="nav-estilos" aria-selected="false">{$Estilos}</a>
                        <a class="nav-item nav-link" id="nav-imagenes-tab" data-toggle="tab" href="#nav-imagenes" role="tab" aria-controls="nav-imagenes" aria-selected="false">{$Imagenes}</a>
                        {if ($ANUNCIO_ENABLE gte yes)}
                            <a class="nav-item nav-link" id="nav-anuncio-tab" data-toggle="tab" href="#nav-anuncio" role="tab" aria-controls="nav-anuncio" aria-selected="false">{$ANUNCIO}</a>
                        {/if}
                    </div>
                </nav>
                <br/>
                <div class="tab-content" id="nav-tabContent">
                    <div class="tab-pane fade show active" id="nav-general" role="tabpanel" aria-labelledby="nav-home-tab">
                        <div class="container">
                            <div class="form-group row">
                                <label for="WebName" class="col-sm-2 col-form-label col-form-label-sm">{$WN_TITLE}</label>
                                <div class="col-sm">
                                    <input type="text" class="form-control form-control-sm" id="WebName" value="{$WN_VALUE}" name="WebName">
                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="WebDescripccion" class="col-sm-2 col-form-label col-form-label-sm">{$WD_TITLE}</label>
                                <div class="col-sm">
                                    <input type="text" class="form-control form-control-sm" id="WebDescripccion" value="{$WB_VALUE}" name="WebDescrip">
                                </div>
                            </div>
                            <div class="form-group row">
                                <label class="col-sm-2 col-form-label col-form-label-sm check-change js-check-change-field" for="logoanimate">{$ANIMATE_LOGO}</label>
                                <div class="col-sm">
                                    <input type="hidden" name="checkbox" value="0">
                                    <input type="checkbox" name="checkbox" class="js-switch js-check-change" id="checkbox" value="1"{if ($CLOUD gte animated)} checked{/if}>
                                </div>
                            </div>
                            <div class="form-group row">
                                <label class="col-sm-2 col-form-label col-form-label-sm check-change js-check-change-field" for="CUSTOM_CONTEX_MENU">CCM <small>Developing</small></label>
                                <div class="col-sm">
                                    <input type="hidden" name="CUSTOM_CONTEX_MENU" value="0">
                                    <input type="checkbox" name="CUSTOM_CONTEX_MENU" class="js-switch js-check-change" id="CUSTOM_CONTEX_MENU" value="1"{if ($CCM == block)} checked{/if}>
                                </div>
                            </div>
                            <div class="form-group row">
                                <label class="col-sm-2 col-form-label col-form-label-sm check-change js-check-change-field" for="ANIMATIONS">Animations <small class="text-success">90%{$S_ANIMATIONS}</small></label>
                                <div class="col-sm">
                                    <input type="hidden" name="ANIMATIONS" value="0">
                                    <input type="checkbox" name="ANIMATIONS" class="js-switch js-check-change" id="ANIMATIONS" value="1"{if ($S_ANIMATIONS == yes)} checked{/if}>
                                </div>
                            </div>
                            <div class="form-group row">
                                <label class="col-sm-2 col-form-label col-form-label-sm check-change js-check-change-field" for="ANUNCIO_ENABLE">{$ANUNCIO}</label>
                                <div class="col-sm">
                                    <input type="hidden" name="ANUNCIO_ENABLE" value="0">
                                    <input type="checkbox" name="ANUNCIO_ENABLE" class="js-switch js-check-change" id="ANUNCIO_ENABLE" value="1"{if ($ANUNCIO_ENABLE gte yes)} checked{/if}>
                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="footer" class="col-sm-2 col-form-label col-form-label-sm">{$FOOTER_TITLE}</label>
                                <div class="col-sm">
                                    <textarea class="form-control form-control-sm" id="footer" name="footer" rows="3" placeholder="Nuevos comentarios">{$FOOTER_VALUE}</textarea>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="tab-pane fade" id="nav-estilos" role="tabpanel" aria-labelledby="nav-profile-tab">
                        <div class="container">
                            <div class="accordion" id="accordionExample">
                                <div class="card-header" id="headingTwo">
                                    <h5 class="mb-0">
                                        <a class="btn btn-primary collapsed c-dark" data-toggle="collapse" data-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
                                            {$Principales}
                                        </a>
                                    </h5>
                                </div>
                                <div id="collapseTwo" class="collapse show" aria-labelledby="headingTwo" data-parent="#accordionExample">
                                    <div class="card-body">
                                        <div class="form-group row color1 colorpicker-element">
                                            <label for="color1" class="col-sm-2 col-form-label col-form-label-sm">{$COLOR1}</label>
                                            <div class="col-sm">
                                                <input type="text" class="form-control form-control-sm" id="color1" name="color1" value="{$COLOR1_VALUE}">
                                            </div>
                                            <div class="input-group-append col-sm-1 col-form-label col-form-label-sm">
                                                <span class="input-group-text colorpicker-input-addon"><i></i></span>
                                            </div>
                                        </div>
                                        <div class="form-group row color2 colorpicker-element">
                                            <label for="color2" class="col-sm-2 col-form-label col-form-label-sm">{$COLOR2}</label>
                                            <div class="col-sm">
                                                <input type="text" class="form-control form-control-sm" id="color2" name="color2" value="{$COLOR2_VALUE}">
                                            </div>
                                            <div class="input-group-append col-sm-1 col-form-label col-form-label-sm">
                                                <span class="input-group-text colorpicker-input-addon"><i></i></span>
                                            </div>
                                        </div>
                                        <div class="form-group row secondarycolor colorpicker-element">
                                            <label for="secondarycolor" class="col-sm-2 col-form-label col-form-label-sm">{$SECONDARY_TITLE}</label>
                                            <div class="col-sm">
                                                <input type="text" class="form-control form-control-sm" id="secondarycolor" name="secondary" value="{$SECONDARY_VALUE}">
                                            </div>
                                            <div class="input-group-append col-sm-1 col-form-label col-form-label-sm">
                                                <span class="input-group-text colorpicker-input-addon"><i></i></span>
                                            </div>
                                        </div>
                                        <div class="form-group row successcolor colorpicker-element">
                                            <label for="success" class="col-sm-2 col-form-label col-form-label-sm">{$TSUCCESS}</label>
                                            <div class="col-sm">
                                                <input type="text" class="form-control form-control-sm" id="success" name="success" value="{$SUCCESSVALUE}">
                                            </div>
                                            <div class="input-group-append col-sm-1 col-form-label col-form-label-sm">
                                                <span class="input-group-text colorpicker-input-addon"><i></i></span>
                                            </div>
                                        </div>
                                        <div class="form-group row infocolor colorpicker-element">
                                            <label for="info" class="col-sm-2 col-form-label col-form-label-sm">{$TINFO}</label>
                                            <div class="col-sm">
                                                <input type="text" class="form-control form-control-sm" id="info" name="info" value="{$INFOVALUE}">
                                            </div>
                                            <div class="input-group-append col-sm-1 col-form-label col-form-label-sm">
                                                <span class="input-group-text colorpicker-input-addon"><i></i></span>
                                            </div>
                                        </div>
                                        <div class="form-group row warningcolor colorpicker-element">
                                            <label for="warning" class="col-sm-2 col-form-label col-form-label-sm">{$TWARNING}</label>
                                            <div class="col-sm">
                                                <input type="text" class="form-control form-control-sm" id="warning" name="warning" value="{$WARNINGVALUE}">
                                            </div>
                                            <div class="input-group-append col-sm-1 col-form-label col-form-label-sm">
                                                <span class="input-group-text colorpicker-input-addon"><i></i></span>
                                            </div>
                                        </div>
                                        <div class="form-group row dangercolor colorpicker-element">
                                            <label for="danger" class="col-sm-2 col-form-label col-form-label-sm">{$TDANGER}</label>
                                            <div class="col-sm">
                                                <input type="text" class="form-control form-control-sm" id="danger" name="danger" value="{$DANGERVALUE}">
                                            </div>
                                            <div class="input-group-append col-sm-1 col-form-label col-form-label-sm">
                                                <span class="input-group-text colorpicker-input-addon"><i></i></span>
                                            </div>
                                        </div>
                                        <div class="form-group row bodycolor colorpicker-element">
                                            <label for="bodycolor" class="col-sm-2 col-form-label col-form-label-sm">BODY</label>
                                            <div class="col-sm">
                                                <input type="text" class="form-control form-control-sm" id="bodycolor" name="bodycolor" value="{$BODY_COLOR_VALUE}">
                                            </div>
                                            <div class="input-group-append col-sm-1 col-form-label col-form-label-sm">
                                                <span class="input-group-text colorpicker-input-addon"><i></i></span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="tab-pane fade" id="nav-imagenes" role="tabpanel" aria-labelledby="nav-imagenes-tab">
                        <div class="container">
                            <div class="form-group row ">
                                <label for="logo" class="col-sm-2 col-form-label col-form-label-sm">{$LOGO_TITLE}</label>
                                <div class="col-sm">
                                    <input type="text" class="form-control form-control-sm" id="logo" value="{$LOGO_VALUE}" name="logo">
                                </div>
                            </div>
                            <div class="form-group row ">
                                <label for="banner" class="col-sm-2 col-form-label col-form-label-sm">{$BANNER_TITLE}</label>
                                <div class="col-sm">
                                    <input type="text" class="form-control form-control-sm" id="banner" value="{$BANNER_VALUE}" name="banner">
                                </div>
                            </div>
                            <div class="form-group row ">
                                <label for="favicon" class="col-sm-2 col-form-label col-form-label-sm">{$FAVICON_TITLE}</label>
                                <div class="col-sm">
                                    <input type="text" class="form-control form-control-sm" id="favicon" value="{$FAVICON_VALUE}" name="favicon">
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="tab-pane fade" id="nav-anuncio" role="tabpanel" aria-labelledby="nav-anuncio-tab">
                        <div class="container">
                            <div class="form-group row">
                                <label for="AnuncioTitle" class="col-sm-2 col-form-label col-form-label-sm">{$A_T_ANUNCIO}</label>
                                <div class="col-sm">
                                    <input class="form-control form-control-sm" id="AnuncioTitle" name="TitleAnuncio" value="{$TA_VALUE}">
                                </div>
                            </div>
                        </div>
                        <div class="container">
                            <div class="form-group row">
                                <label for="AnuncioDescription" class="col-sm-2 col-form-label col-form-label-sm">{$A_D_ANUNCIO}</label>
                                <div class="col-sm">
                                    <input class="form-control form-control-sm" id="AnuncioDescription" name="DescriptAnuncio" value="{$TD_VALUE}">
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="container form-group">
                    <input type="hidden" name="token" value="{$TOKEN}">
                    <input type="submit" class="btn btn-primary" value="{$SUBMIT}">
                    <a onclick="javascript:history.go(-1)" class="btn btn-danger">{$LEAVE}</a>
                </div>
             </form>
        </div>
    </div>
</div>
<script type="text/javascript" src="{$TEMPLATE.core}plugins/bootstrap-colorpicker/js/bootstrap-colorpicker.min.js"></script>
<script type="text/javascript">
    
        $('.color1').colorpicker({
            format: 'rgba'
        });
        $('.color2').colorpicker({
            format: 'rgba'
        });
        $('.secondarycolor').colorpicker({
            format: 'rgba'
        });
        $('.successcolor').colorpicker({
            format: 'rgba'
        });
        $('.infocolor').colorpicker({
            format: 'rgba'
        });
        $('.warningcolor').colorpicker({
            format: 'rgba'
        });
        $('.dangercolor').colorpicker({
            format: 'rgba'
        });
        $('.bodycolor').colorpicker({
            format: 'rgba'
        });
	
		var elems = Array.prototype.slice.call(document.querySelectorAll('.js-switch'));

		elems.forEach(function(html) {
		  var switchery = new Switchery(html, {
              color: '#23923d', 
              secondaryColor: '#e56464'
          });
		});
</script>
{*
<script type="text/javascript">
$(document).ready(function(){
    $('.color1').colorpicker({
        'color': '{$COLOR1_VALUE}'
    });
    $('.color2').colorpicker({
        'color': '{$COLOR2_VALUE}'
    });
    $('.secondarycolor').colorpicker({
        format: 'rgba',
        'color': '{$SECONDARY_VALUE}'
    });
    $('.successcolor').colorpicker({
        format: 'rgba',
        'color': '{$SUCCESSVALUE}'
    });
    $('.infocolor').colorpicker({
        format: 'rgba',
        'color': '{$INFOVALUE}'
    });
    $('.warningcolor').colorpicker({
        format: 'rgba',
        'color': '{$WARNINGVALUE}'
    });
    $('.dangercolor').colorpicker({
        format: 'rgba',
        'color': '{$DANGERVALUE}'
    });
    $('.bodycolor').colorpicker({
        format: 'rgba',
        'color': '{$BODY_COLOR_VALUE}'
    });
 });
</script>
*}
{/nocache}