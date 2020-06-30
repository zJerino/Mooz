<link rel="stylesheet" href="{$NLS_PATH}/custom/templates/Mooz/core/assets/css/material.css" async="">
<link rel="stylesheet" href="{$NLS_PATH}/custom/templates/Mooz/core/assets/css/custom.css" async="">
<link rel="stylesheet" href="{$NLS_PATH}/custom/templates/Mooz/core/assets/css/all.min.css" async="">
<link rel="stylesheet" href="{$NLS_PATH}/custom/templates/Mooz/core/assets/css/styles.php" async="">
<link rel="stylesheet" href="{$NLS_PATH}/custom/templates/Mooz/core/panel/css.php" async="">
<link rel="stylesheet" href="{$NLS_PATH}/core/assets/plugins/switchery/switchery.min.css" async>
<link rel="stylesheet" href="{$NLS_PATH}/core/assets/plugins/bootstrap-colorpicker/css/bootstrap-colorpicker.min.css">
    </div>
</div>
<div class="row justify-content-center" id="accordionExample">
    <div class="col-md-3 order-1">
        <div class="card card-news">
            <div class="card-header">
                {$Mz_NAV}
            </div>
            <div class="card-body tab-content"  id="nav-tabContent">
                <div class="nav flex-column nav-pills nav-justified" id="v-pills-tab" role="tablist" aria-orientation="vertical">
                    <a class="rounded nav-item nav-link active" id="General-tab" data-toggle="tab" href="#General" role="tab" aria-controls="General" aria-selected="true">{$Mz_NAVI.0}</a>
                    <a class="rounded nav-item nav-link" id="Styles-tab" data-toggle="tab" href="#Styles" role="tab" aria-controls="Styles" aria-selected="false">{$Mz_NAVI.1}</a>
                    {if ($GENERAL_VALUE.WEB_ANUN gte 1)}
                        <a class="rounded nav-item nav-link" id="Anuncios-tab" data-toggle="tab" href="#Anuncios" role="tab" aria-controls="Anuncios" aria-selected="false">{$Mz_NAVI.2}</a>
                    {/if}
                    <a class="rounded nav-item nav-link" id="Carrucel-tab" data-toggle="tab" href="#Carrucel" role="tab" aria-controls="Carrucel" aria-selected="false">{$Mz_NAVI.3}</a>
                </div>
            </div>
        </div>
        <div class="card card-news">
            <div class="card-header">
                Discord Support
            </div>
            <div class="card-body centro">
                <iframe src="https://ptb.discordapp.com/widget?id=465225722441498634&theme=light" height="500" width="100%" allowtransparency="true" frameborder="0"></iframe>
            </div>
        </div>
    </div>
    <div class="col order-12 tab-content" id="v-pills-tabContent">
<div class="card card-news">
  <div class="card-body">
      <div class="card-header">
          <span class="card-title centro" style="margin: 0">
              {$MOOZ}
          </span>
      </div>
      <div class="container">
              <div class="tab-content" id="nav-tabContent">
                  <div class="tab-pane fade show active" id="General" role="tabpanel" aria-labelledby="General-tab">
                      <form action="" method="post">
                        <div class="container-fluid">
                            <div class="form-group row">
                                <label for="webname" class="col-sm-2 col-form-label">Web Name</label>
                                <div class="col-sm-10">
                                  <input type="text" class="form-control" name="webname" id="webname" maxlength="20" value="{$GENERAL_VALUE.WEB_NAME}" placeholder="NamelessMC">
                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="webDescription" class="col-sm-2 col-form-label">Web Description</label>
                                <div class="col-sm-10">
                                  <input type="text" class="form-control" id="webDescription" name="webDescription" maxlength="100" value="{$GENERAL_VALUE.WEB_DESC}" placeholder="NamelessMC is the best CMS">
                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="webKeywords" class="col-sm-2 col-form-label">Web Keywords</label>
                                <div class="col-sm-8">
                                  <input type="text" class="form-control" id="webKeywords" name="webKeywords" maxlength="80" value="{$GENERAL_VALUE.WEB_KEYW}" placeholder="NamelessMC, CMS, {$SITE_NAME}">
                                </div>
                                <div class="col-sm-2">
                                    <a href="{$MORE_DATOS}" class="btn btn-primary">Pages Metadata</a>
                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="webLogo" class="col-sm-2 col-form-label">Logo</label>
                                <div class="col-sm-10">
                                  <input type="text" class="form-control" id="webLogo" name="webLogo" value="{$GENERAL_VALUE.WEB_LOGO}" placeholder="{$NLS_PATH}/custom/templates/Mooz/img/logo.png">
                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="webBanner" class="col-sm-2 col-form-label">BANNER</label>
                                <div class="col-sm-10">
                                  <input type="text" class="form-control" id="webBanner" name="webBanner" value="{$GENERAL_VALUE.WEB_BANN}" placeholder="{$NLS_PATH}/custom/templates/Mooz/img/banner.png">
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md">
                                    <div class="form-group row">
                                        <label class="col-md-3 m-1 p-0 col-form-label">Anuncios</label>
                                        <input type="hidden" name="webanuncio" value="0">
                                        <input name="webanuncio" type="checkbox" class="js-switch js-check-change col p-0" {if ($GENERAL_VALUE.WEB_ANUN gte 1)} checked {/if} value="1" data-switchery="true">
                                    </div>
                                </div>
                                <div class="col-md">
                                    <div class="form-group row">
                                        <label class="col-md-5 m-1 p-0 col-form-label">EMOJI SYSTEM</label>
                                        <input type="hidden" name="webte" value="0">
                                        <input name="webte" type="checkbox" class="js-switch js-check-change col p-0" {if ($GENERAL_VALUE.WEB_TEM gte 1)} checked {/if} value="1" data-switchery="true">
                                    </div>
                                </div>
                                <div class="col-md">
                                    <div class="form-group row">
                                        <label class="col-md-5 m-1 p-0 col-form-label">FUE</label>
                                        <input type="hidden" name="webfue" value="0">
                                        <input name="webfue" type="checkbox" class="js-switch js-check-change col p-0" {if ($GENERAL_VALUE.WEB_FUE gte 1)} checked {/if} value="1" data-switchery="true">
                                    </div>
                                </div>
                            </div>
                            <hr>
                            <div class="container form-group">
                                <input hidden name="token" value="{$TOKEN}">
                                <input hidden name="General" value="yes">
                                <input type="submit" class="btn btn-primary" value="{$SUBMIT}">
                                <a onclick="javascript:history.go(-1)" class="btn btn-danger text-white">{$BACK}</a>
                            </div>
                          </div>
                      </form>   
                  </div>
                  <div class="tab-pane fade" id="Styles" role="tabpanel" aria-labelledby="Styles-tab">
                      <form action="" class="" method="post">
                        <div class="container">
                            <div class="form-group row">
                                <label class="col-md-3 m-1 p-0 col-form-label">
                                    Use gradient for primary color?
                                </label>
                                <input type="hidden" name="primary-op" value="0">
                                <input name="primary-op" type="checkbox" class="js-switch js-check-change col p-0" {if ($PRIMARY_OPTION >= '1')} checked {/if} value="1" data-switchery="true">
                                
                            </div>
                            <div class="input-group form-group row color-piker">
                                <label for="nose" class="col-sm-2 col-form-label">PRIMARY 1</label>
                                <div class="col-sm-10">
                                    <span class="row">
                                        <input type="text" name="PRIMARY_1" class="form-control col" value="{$CSS_VALUE.PRIMARY_1}"/>
                                        <span class="input-group-append col-1 m-0 p-0">
                                            <span class="input-group-text colorpicker-input-addon">
                                                <i></i>
                                            </span>
                                        </span>
                                    </span>
                                </div>
                            </div>
                            {if ($PRIMARY_OPTION >= '1')}
                                <div class="input-group form-group row color-piker">
                                    <label for="nose" class="col-sm-2 col-form-label">PRIMARY 2</label>
                                    <div class="col-sm-10">
                                        <span class="row">
                                            <input type="text" name="PRIMARY_2" class="form-control col" value="{$CSS_VALUE.PRIMARY_2}"/>
                                            <span class="input-group-append col-1 m-0 p-0">
                                                <span class="input-group-text colorpicker-input-addon">
                                                    <i></i>
                                                </span>
                                            </span>
                                        </span>
                                    </div>
                                </div>
                            {/if}
                            <div class="input-group form-group row color-piker">
                                <label for="nose" class="col-sm-2 col-form-label">SECONDARY</label>
                                <div class="col-sm-10">
                                    <span class="row">
                                        <input type="text" name="SECONDARY" class="form-control col" value="{$CSS_VALUE.SECONDARY}"/>
                                        <span class="input-group-append col-1 m-0 p-0">
                                            <span class="input-group-text colorpicker-input-addon">
                                                <i></i>
                                            </span>
                                        </span>
                                    </span>
                                </div>
                            </div>
                            <div class="input-group form-group row color-piker">
                                <label for="nose" class="col-sm-2 col-form-label">LIGHT</label>
                                <div class="col-sm-10">
                                    <span class="row">
                                        <input type="text" name="LIGHT" class="form-control col" value="{$CSS_VALUE.LIGHT}"/>
                                        <span class="input-group-append col-1 m-0 p-0">
                                            <span class="input-group-text colorpicker-input-addon">
                                                <i></i>
                                            </span>
                                        </span>
                                    </span>
                                </div>
                            </div>
                            <div class="input-group form-group row color-piker">
                                <label for="nose" class="col-sm-2 col-form-label">DARK</label>
                                <div class="col-sm-10">
                                    <span class="row">
                                        <input type="text" name="DARK" class="form-control col" value="{$CSS_VALUE.DARK}"/>
                                        <span class="input-group-append col-1 m-0 p-0">
                                            <span class="input-group-text colorpicker-input-addon">
                                                <i></i>
                                            </span>
                                        </span>
                                    </span>
                                </div>
                            </div>
                            <div class="input-group form-group row color-piker">
                                <label for="nose" class="col-sm-2 col-form-label">SUCCESS</label>
                                <div class="col-sm-10">
                                    <span class="row">
                                        <input type="text" name="SUCCESS" class="form-control col" value="{$CSS_VALUE.SUCCESS}"/>
                                        <span class="input-group-append col-1 m-0 p-0">
                                            <span class="input-group-text colorpicker-input-addon">
                                                <i></i>
                                            </span>
                                        </span>
                                    </span>
                                </div>
                            </div>
                            <div class="input-group form-group row color-piker">
                                <label for="nose" class="col-sm-2 col-form-label">INFO</label>
                                <div class="col-sm-10">
                                    <span class="row">
                                        <input type="text" name="INFO" class="form-control col" value="{$CSS_VALUE.INFO}"/>
                                        <span class="input-group-append col-1 m-0 p-0">
                                            <span class="input-group-text colorpicker-input-addon">
                                                <i></i>
                                            </span>
                                        </span>
                                    </span>
                                </div>
                            </div>
                            <div class="input-group form-group row color-piker">
                                <label for="nose" class="col-sm-2 col-form-label">WARNING</label>
                                <div class="col-sm-10">
                                    <span class="row">
                                        <input type="text" name="WARNING" class="form-control col" value="{$CSS_VALUE.WARNING}"/>
                                        <span class="input-group-append col-1 m-0 p-0">
                                            <span class="input-group-text colorpicker-input-addon">
                                                <i></i>
                                            </span>
                                        </span>
                                    </span>
                                </div>
                            </div>
                            <div class="input-group form-group row color-piker">
                                <label for="nose" class="col-sm-2 col-form-label">DANGER</label>
                                <div class="col-sm-10">
                                    <span class="row">
                                        <input type="text" name="DANGER" class="form-control col" value="{$CSS_VALUE.DANGER}"/>
                                        <span class="input-group-append col-1 m-0 p-0">
                                            <span class="input-group-text colorpicker-input-addon">
                                                <i></i>
                                            </span>
                                        </span>
                                    </span>
                                </div>
                            </div>
                            <hr>
                            <div class="input-group form-group row color-piker">
                                <label for="nose" class="col-sm-2 col-form-label">Body</label>
                                <div class="col-sm-10">
                                    <span class="row">
                                        <input type="text" name="BODY" class="form-control col" value="{$CSS_VALUE.BODY}"/>
                                        <span class="input-group-append col-1 m-0 p-0">
                                            <span class="input-group-text colorpicker-input-addon">
                                                <i></i>
                                            </span>
                                        </span>
                                    </span>
                                </div>
                            </div>
                            <div class="input-group form-group row color-piker">
                                <label for="asasdasdas" class="col-sm-2 col-form-label">Iconos de la cabecera</label>
                                <div class="col-sm-10">
                                    <span class="row">
                                        <input type="text"  id="asasdasdas" name="HICONS" class="form-control col" value="{$CSS_VALUE.HICONS}"/>
                                        <span class="input-group-append col-1 m-0 p-0">
                                            <span class="input-group-text colorpicker-input-addon">
                                                <i></i>
                                            </span>
                                        </span>
                                    </span>
                                </div>
                            </div>
                            <div class="input-group form-group row color-piker">
                                <label for="nose" class="col-sm-2 col-form-label">FONT COLOR 1</label>
                                <div class="col-sm-10">
                                    <span class="row">
                                        <input type="text" name="FONT_1" class="form-control col" value="{$CSS_VALUE.F_1}"/>
                                        <span class="input-group-append col-1 m-0 p-0">
                                            <span class="input-group-text colorpicker-input-addon">
                                                <i></i>
                                            </span>
                                        </span>
                                    </span>
                                </div>
                            </div>
                            <div class="input-group form-group row color-piker">
                                <label for="nose" class="col-sm-2 col-form-label">FONT COLOR 2</label>
                                <div class="col-sm-10">
                                    <span class="row">
                                        <input type="text" name="FONT_2" class="form-control col" value="{$CSS_VALUE.F_2}"/>
                                        <span class="input-group-append col-1 m-0 p-0">
                                            <span class="input-group-text colorpicker-input-addon">
                                                <i></i>
                                            </span>
                                        </span>
                                    </span>
                                </div>
                            </div>
                            <div class="input-group form-group row color-piker">
                                <label for="nose" class="col-sm-2 col-form-label">FONT COLOR 3</label>
                                <div class="col-sm-10">
                                    <span class="row">
                                        <input type="text" name="FONT_3" class="form-control col" value="{$CSS_VALUE.F_3}"/>
                                        <span class="input-group-append col-1 m-0 p-0">
                                            <span class="input-group-text colorpicker-input-addon">
                                                <i></i>
                                            </span>
                                        </span>
                                    </span>
                                </div>
                            </div>
                            <div class="input-group form-group row color-piker">
                                <label for="nose" class="col-sm-2 col-form-label">FONT COLOR 4</label>
                                <div class="col-sm-10">
                                    <span class="row">
                                        <input type="text" name="FONT_4" class="form-control col" value="{$CSS_VALUE.F_4}"/>
                                        <span class="input-group-append col-1 m-0 p-0">
                                            <span class="input-group-text colorpicker-input-addon">
                                                <i></i>
                                            </span>
                                        </span>
                                    </span>
                                </div>
                            </div>
                            <div class="input-group form-group row color-piker">
                                <label for="nose" class="col-sm-2 col-form-label">CARD BODY</label>
                                <div class="col-sm-10">
                                    <span class="row">
                                        <input type="text" name="CARDB" class="form-control col" value="{$CSS_VALUE.CARD_B}"/>
                                        <span class="input-group-append col-1 m-0 p-0">
                                            <span class="input-group-text colorpicker-input-addon">
                                                <i></i>
                                            </span>
                                        </span>
                                    </span>
                                </div>
                            </div>
                            <div class="input-group form-group row color-piker">
                                <label for="nose" class="col-sm-2 col-form-label">CARD FOOTER</label>
                                <div class="col-sm-10">
                                    <span class="row">
                                        <input type="text" name="CARDF" class="form-control col" value="{$CSS_VALUE.CARD_F}"/>
                                        <span class="input-group-append col-1 m-0 p-0">
                                            <span class="input-group-text colorpicker-input-addon">
                                                <i></i>
                                            </span>
                                        </span>
                                    </span>
                                </div>
                            </div>
                            <div class="input-group form-group">
                                <label for="nose" class="col-sm-2 col-form-label">Familia de la fuente</label>
                                <input type="text" name="FONT_F" class="form-control col-md" placeholder="@import url('https://fonts.googleapis.com/css2?family=Montserrat:wght@100;300;400;500;600;700&display=swap');" value="{$CSS_VALUE.FUENTE}"/>
                            </div>
                            <div class="input-group form-group">
                                <label for="nose" class="col-sm-2 col-form-label">Familia de la fuente</label>
                                <input type="text" name="FONT_F2" class="form-control col-md" placeholder="font-family: 'Montserrat', sans-serif;" value="{$CSS_VALUE.FUENTE2}"/>
                            </div>
                            <div class="input-group form-group">
                                <label for="nose" class="col-sm-2 col-form-label">Tamano de la fuente</label>
                                <input type="text" name="FONT_S" class="form-control col-md" placeholder="1rem" value="{$CSS_VALUE.SFUENTE}"/>
                            </div>
                            <hr>
                            <div class="container form-group">
                                <input hidden name="token" value="{$TOKEN}">
                                <input hidden name="Styles" value="yes">
                                <input type="submit" class="btn btn-primary" value="{$SUBMIT}">
                                <a onclick="javascript:history.go(-1)" class="btn btn-danger text-white">{$BACK}</a>
                            </div>
                          </div>
                      </form>
                  </div>
                  <div class="tab-pane fade" id="Anuncios" role="tabpanel" aria-labelledby="Anuncios-tab">
                      <div class="container">
                          <form action="" method="post">
                            <div class="form-group row ">
                                <label for="logo" class="col-sm-2 col-form-label col-form-label-sm">Soon</label>
                                <div class="col-sm">
                                    <select class="form-control" id="Anunciostipo" name="ANUNCIO_TIPO">
                                        <option value="primary" {if ($ANUNCIO_VALUE.TIPO == "primary")} selected {/if}>Primary</option>
                                        <option value="success" {if ($ANUNCIO_VALUE.TIPO == "success")} selected {/if}>Success</option>
                                        <option value="info" {if ($ANUNCIO_VALUE.TIPO == "info")} selected {/if}>Info</option>
                                        <option value="warning" {if ($ANUNCIO_VALUE.TIPO == "warning")} selected {/if}>Warning</option>
                                        <option value="danger" {if ($ANUNCIO_VALUE.TIPO == "danger")} selected {/if}>Danger</option>
                                    </select>
                                </div>
                            </div>
                            <div class="form-group row ">
                                <label for="banner" class="col-sm-2 col-form-label col-form-label-sm">Title</label>
                                <div class="col-sm">
                                    <input type="text" class="form-control" id="banner" value="{$ANUNCIO_VALUE.TITULO}" name="ANUNCIO_TITU">
                                </div>
                            </div>
                            <div class="form-group row ">
                                <label for="favicon" class="col-sm-2 col-form-label col-form-label-sm">Description</label>
                                <div class="col-sm">
                                    <input type="text" class="form-control" id="favicon" value="{$ANUNCIO_VALUE.DESCRI}" name="ANUNCIO_DESC">
                                </div>
                                
                            </div>
                            <hr>
                            
                            <div class="container form-group">
                                <input hidden name="token" value="{$TOKEN}">
                                <input hidden name="Anuncio" value="yes">
                                <input type="submit" class="btn btn-primary" value="{$SUBMIT}">
                                <a onclick="javascript:history.go(-1)" class="btn btn-danger text-white">{$BACK}</a>
                            </div>
                          </form>
                      </div>
                  </div>
                  <div class="tab-pane fade" id="Carrucel" role="tabpanel" aria-labelledby="Carrucel-tab">
                      <form action="" method="post">
                        <div class="container">
                            <div class="form-group row">
                                <label for="FooterText" class="col-sm-2 col-form-label col-form-label-sm">FOOTER TEXT</label>
                                <div class="col-sm">
                                    <textarea name="FooterText" id="FooterText" maxlength="255" class="form-control form-control-sm">
                                        {$FOOTER.FTEXTO}
                                    </textarea>
                                </div>
                            </div>
                        </div>
                        <hr>
                        <div class="container form-group">
                          <input hidden name="token" value="{$TOKEN}">
                          <input hidden name="FOOTER" value="yes">
                          <input type="submit" class="btn btn-primary" value="{$SUBMIT}">
                          <a onclick="javascript:history.go(-1)" class="btn btn-danger text-white">{$BACK}</a>
                        </div>
                      </form>
                  </div>
              </div>
      </div>
  </div>
</div>
    </div>
</div>
<div>
    <div>
        <script type="text/javascript" src="{$NLS_PATH}/custom/panel_templates/Default/assets/plugins/jquery/jquery.min.js" defer></script>
        <script type="text/javascript" src="{$NLS_PATH}/custom/templates/Mooz/core/assets/js/popper.min.js" defer></script> 
        <script src="{$NLS_PATH}/custom/templates/Mooz/core/assets/js/bootstrap.min.js" defer></script>
        <script  src="{$NLS_PATH}/custom/panel_templates/Default/assets/plugins/bootstrap/js/bootstrap.bundle.min.js" defer></script>
        <script src="{$NLS_PATH}/custom/templates/Mooz/core/assets/js/material.js"></script>
        <script src="{$NLS_PATH}/core/assets/plugins/bootstrap-colorpicker/js/bootstrap-colorpicker.min.js" defer></script>
        <script type="text/javascript" src="{$NLS_PATH}/custom/templates/Mooz/core/assets/js/panel.js" defer></script> 
        <script type="text/javascript" src="{$NLS_PATH}/core/assets/plugins/switchery/switchery.min.js"></script>
        {literal}
            <script type="text/javascript">
                var elems = Array.prototype.slice.call(document.querySelectorAll('.js-switch'));

                elems.forEach(function(html) {
                var switchery = new Switchery(html, {color: '#23923d', secondaryColor: '#e56464'});
                });
            </script>
        {/literal}
