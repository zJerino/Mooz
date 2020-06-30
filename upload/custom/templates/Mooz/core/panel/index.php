<?php
$MzLang = new Language(ROOT_PATH . '/custom/templates/Mooz/core/language', LANGUAGE);

$META_DATOS = URL::build('/panel/core/metadata/');

require(ROOT_PATH . '/custom/templates/Mooz/core/panel/KASDISAASDYIADG.php');

if (Input::exists()) {
	if (Token::check(Input::get('token'))) {
        $cache->setCache('Mooz-baleehh');
        if (isset($_POST['General'])) {
            $GENERAL_INPUT = array(
                'WEB_NAME' => $_POST['webname'], 
                'WEB_DESC' => $_POST['webDescription'], 
                'WEB_KEYW' => $_POST['webKeywords'], 
                'WEB_LOGO' => $_POST['webLogo'], 
                'WEB_BANN' => $_POST['webBanner'],
                'WEB_ANUN' => $_POST['webanuncio'], 
                'WEB_TEM' => $_POST['webte'], 
                'WEB_FUE' => $_POST['webfue'], 
                'WEB_ANI' => $_POST['webani'], 
            );
            $cache->store('General_Settigns', $GENERAL_INPUT);
            $success = 'Informacion enviada';
        }
        if (isset($_POST['Styles'])) {
           try {
                
            $SCSS_INPUT = array(
                // COLORES PRIMARIOS
                'PRIMARY_OP' => $_POST['primary-op'], 
                'PRIMARY_1' => $_POST['PRIMARY_1'], 
                'PRIMARY_2' => $_POST['PRIMARY_2'], 
                'SECONDARY' => $_POST['SECONDARY'], 
                'LIGHT' => $_POST['LIGHT'], 
                'DARK' => $_POST['DARK'], 
                'SUCCESS' => $_POST['SUCCESS'], 
                'INFO' => $_POST['INFO'], 
                'WARNING' => $_POST['WARNING'], 
                'DANGER' => $_POST['DANGER'], 
                // OTHERS
                'BODY' => $_POST['BODY'],
                'HICONS' => $_POST['HICONS'], 
                'F_1' => $_POST['FONT_1'], 
                'F_2' => $_POST['FONT_2'], 
                'F_3' => $_POST['FONT_3'], 
                'F_4' => $_POST['FONT_4'], 
                'CARD_B' => $_POST['CARDB'], 
                'CARD_F' => $_POST['CARDF'], 
                'FUENTE' => $_POST['FONT_F'], 
                'FUENTE2' => $_POST['FONT_F2'], 
                'SFUENTE' => $_POST['FONT_S'], 
            );
            $cache->store('SCSS_Settigns', $SCSS_INPUT);
                
            $json_string = json_encode($SCSS_INPUT, JSON_PRETTY_PRINT);
            $file = ROOT_PATH . '/custom/templates/Mooz/core/settings/styles.json';
            file_put_contents($file, $json_string);

            $success = 'Informacion enviada';
            
           } catch (\Throwable $th) {
               echo $th;
           }            
        }
        if (isset($_POST['Anuncio'])) {
           try {
                
            $ANUNCIO_INPUT = array(
                // Anuncios
                'TITULO' => $_POST['ANUNCIO_TITU'],
                'DESCRI' => $_POST['ANUNCIO_DESC'],
                'TIPO' => $_POST['ANUNCIO_TIPO'],
            );
            $cache->store('ANUNCIO_Settigns', $ANUNCIO_INPUT);

            $success = 'Informacion enviada';
            
           } catch (\Throwable $th) {
               echo $th;
           }            
        }
        if (isset($_POST['FOOTER'])) {
           try {
                
            $FOOTERTEXT_INPUT = array(
                // Anuncios
                'FTEXTO' => $_POST['FooterText'],
            );
            $cache->store('FOOTERTEXT_Settigns', $FOOTERTEXT_INPUT);
    
            $success = 'Informacion enviada';
            
           } catch (\Throwable $th) {
               echo $th;
           }            
        }
    }
}

$resultados_general = $cache->retrieve('General_Settigns');

$file_json_css = ROOT_PATH . '/custom/templates/Mooz/core/settings/styles.json';
$resultados_css_json = file_get_contents($file_json_css);
$resultados_css = json_decode($resultados_css_json, true);

$resultados_style = $resultados_css;
$resultados_anuncio = $cache->retrieve('ANUNCIO_Settigns');
$resultados_footer = $cache->retrieve('FOOTERTEXT_Settigns');

$ValehhEsCristiana = $resultados_style['PRIMARY_OP'];
$ValehhEsTestigoDeDios = $resultados_style;
$ValehhEsSatanica = $resultados_general;
$ValehhEsMiAmigaUwU = $resultados_anuncio;
$ValehhEsMiMejorAmigaUwU = $resultados_footer;

$smarty->assign(array(
	'TOKEN' => Token::get(),
	'PRIMARY_OPTION' => $ValehhEsCristiana,
	'CSS_VALUE' => $ValehhEsTestigoDeDios,
	'GENERAL_VALUE' => $ValehhEsSatanica,
	'ANUNCIO_VALUE' => $ValehhEsMiAmigaUwU,
	'FOOTER' => $ValehhEsMiMejorAmigaUwU,
	'MORE_DATOS' => $META_DATOS,
    'SETTINGS_TEMPLATE' => ROOT_PATH . '/custom/templates/Mooz/core/panel/index.tpl',
));

$NLS_PATH = $GLOBALS['conf']['core']['path'];
if (strlen($NLS_PATH) >= '1') {
    $smarty->assign(array(
        'NLS_PATH' => '/'.$GLOBALS['conf']['core']['path'],
    ));
}