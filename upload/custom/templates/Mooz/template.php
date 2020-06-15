<?php
/*
 *	NamelessMC by Samerton |  Mooz Template by zJerino
 *
 *	License: MIT
 *	Cache d158baba76918cba404ac4ed3da2b2ff345227cd.cache
 */

/* [~~~~~~(ERRORES)~~~~~~] */
// Inspeccion
if(!is_readable(ROOT_PATH . '/custom/templates/Mooz/core/settings/')) {
    echo 'ERROR #001';
    echo '<br /> <a href="http://Links.laboratoriomc.com.ve/Support/Discord"><b>Discord Support</b></a>';
    die();
}
if(!is_writable(ROOT_PATH . '/custom/templates/Mooz/core/settings/')) {
    echo 'ERROR #001';
    echo '<br /> <a href="http://Links.laboratoriomc.com.ve/Support/Discord"><b>Discord Support</b></a>';
    die();
}
if(!is_readable(ROOT_PATH . '/custom/templates/Mooz/core/assets/')) {
    echo 'ERROR #002';
    echo '<br /> <a href="http://Links.laboratoriomc.com.ve/Support/Discord"><b>Discord Support</b></a>';
    die();
}
if(!is_readable(ROOT_PATH . '/custom/templates/Mooz/core/panel/KASDISAASDYIADG.php')) {
    echo 'ERROR #003';
    echo '<br /> <a href="http://Links.laboratoriomc.com.ve/Support/Discord"><b>Discord Support</b></a>';
    die();
}
/* [~~~~~~(Instalacion)~~~~~~] */
//Exportar idioma personalizado de Mooz
if(!is_readable(ROOT_PATH . '/custom/templates/Mooz/core/')) {
    echo 'ERROR #004';
    echo '<br /> <a href="http://Links.laboratoriomc.com.ve/Support/Discord"><b>Discord Support</b></a>';
    die();
}
$MzLang = new Language(ROOT_PATH . '/custom/templates/Mooz/core/language', LANGUAGE);

//El Cache de la Valeehh
$cache->setcache('Mooz-baleehh');
$MZC['GENERAL'] = $cache->retrieve('General_Settigns');
$MZC['ANUNCIO'] = $cache->retrieve('ANUNCIO_Settigns');
$MZC['FOOTER'] = $cache->retrieve('FOOTERTEXT_Settigns');
if (empty($MZC['GENERAL'])) {
    //Iniciando Instalacion Mooz Template
    $cache->setCache('Mooz-baleehh');
    // Configuracion General Predeterminada
    $GENERAL_INPUT = array( 'WEB_NAME' => 'Mooz', 'WEB_DESC' => "I'am Using Mooz Template", 'WEB_KEYW' => 'NamelesssMC, CMS, Mooz', 'WEB_LOGO' => (defined('CONFIG_PATH') ? CONFIG_PATH : '') . '/custom/templates/Mooz/img/logo.png', 'WEB_BANN' => (defined('CONFIG_PATH') ? CONFIG_PATH : '') . '/custom/templates/Mooz/img/banner.png', 'WEB_ANUN' => 1, 'WEB_TEM' => 1, 'WEB_FUE' => 1, 'WEB_ANI' => 1,);
    $cache->store('General_Settigns', $GENERAL_INPUT);
    // Configuracion CSS Predeterminada
    $SCSS_INPUT = array(
        // COLORES PRIMARIOS
        'PRIMARY_OP' => 1, 'PRIMARY_1' => 'rgb(255, 224, 80)', 'PRIMARY_2' => 'rgb(255, 116, 116)', 'SECONDARY' => 'rgb(194, 194, 194)', 'LIGHT' => 'rgb(231, 231, 231)', 'DARK' => 'rgb(22, 22, 22)', 'SUCCESS' => "rgb(49, 206, 0)", 'INFO' => "rgb(2, 190, 249)", 'WARNING' => "rgb(247, 247, 0)", 'DANGER' => "rgb(253, 0, 0)",
        // OTHERS
        'BODY' => "rgb(231, 231, 231)", 'F_1' => "rgb(73, 73, 73)",'F_2' => "rgb(103, 103, 103)", 'F_3' => "rgb(243, 241, 241)", 'F_4' => "rgb(36, 36, 36)", 'CARD_B' => "rgb(255, 255, 255)", 'CARD_F' => "rgb(247, 247, 247)", 'FUENTE' => "@import url('https://fonts.googleapis.com/css2?family=Montserrat:wght@100;300;400;500;600;700&display=swap');", 'FUENTE2' => "font-family: 'Montserrat', sans-serif;", 'SFUENTE' => "0.9rem"
    );
    $cache->store('SCSS_Settigns', $SCSS_INPUT);
    //INTENTAR CREAR EL ARCHIVO DE ESTILOS
    try {
        $json_string = json_encode($SCSS_INPUT, JSON_PRETTY_PRINT);
        $file = ROOT_PATH . '/custom/templates/Mooz/core/settings/styles.json';
        file_put_contents($file, $json_string);

        if(!is_readable($file)) {
            echo 'ERROR 005';
            echo '<br /> <a href="http://Links.laboratoriomc.com.ve/Support/Discord"><b>Discord Support</b></a>';
            die();
        }
        if(!is_writable($file)) {
            echo 'ERROR 005';
            echo '<br /> <a href="http://Links.laboratoriomc.com.ve/Support/Discord"><b>Discord Support</b></a>';
            die();
        }

    } catch (\Throwable $th) {
        //throw $th;
    }
    // Configuracion Anuncio Predeterminada
    $ANUNCIO_INPUT = array(
        // Anuncios
        'TITULO' => 'Example',
        'DESCRI' => 'Change in StaffCP -> Layout -> Templates -> Mooz Settings -> Announcements',
        'TIPO' => 'primary',
    );
    $cache->store('ANUNCIO_Settigns', $ANUNCIO_INPUT);

    
    $FOOTERTEXT_INPUT = array(
        // Anuncios
        'FTEXTO' => 'Change in StaffCP -> Layout -> Templates -> Mooz Settings -> Footer',
    );
    $cache->store('FOOTERTEXT_Settigns', $FOOTERTEXT_INPUT);

    $success = 'Mooz Fue configurado correctamente';

} else {
    //Importar Idioma x2
    require(ROOT_PATH . '/custom/templates/Mooz/core/panel/KASDISAASDYIADG.php');
    //Smarty de mooz
    $smarty->assign(array(
        'MZ_GS' => $MZC['GENERAL'],
        'MZ_AS' => $MZC['ANUNCIO'],
        'MZ_FS' => $MZC['FOOTER'],
        'MZ_LANG' => $FOOTER,
    ));
    $file = ROOT_PATH . '/custom/templates/Mooz/core/settings/styles.json';
    //Revision de Style.json
    if(defined('BACK_END')){
        if(!file_exists($file)){
            if (isset($_GET['MZ_ACTION']) && $_GET['MZ_ACTION'] == 'Reinstall') {
                echo 'Reinstalando...';
                unlink(ROOT_PATH.'/cache/d158baba76918cba404ac4ed3da2b2ff345227cd.cache');
                Redirect::to((defined('CONFIG_PATH') ? CONFIG_PATH : ''));
                die();
            }
            echo 'ERROR 005.1';
            echo '<br /> <a href="http://Links.laboratoriomc.com.ve/Support/Discord"><b>Discord Support</b></a> <br>';
            echo 'Reinstall Mooz? ';
            echo '<a href="?MZ_ACTION=Reinstall">Yes</a>';
            die();
        }
    }
}

$GLOBALS['Mooz_General'] = $Mooz_General;

class Mooz_Template extends TemplateBase {
    private $_language, $_user, $_pages, $_template, $_cache, $_smarty;

    public function __construct($cache, $smarty, $language, $user, $pages){
        $Mooz_General = $GLOBALS['Mooz_General'];
        $template = array(
            'name' => 'Mooz',
            'version' => '2.0.0-pr7',
            'nl_version' => "2.0.0-pr7",
            'author' => '<a href="https://discord.gg/SKk3GvQ" target="_blank">zBaneado</a>',
            'path' => (defined('CONFIG_PATH') ? CONFIG_PATH : '') . '/custom/templates/Mooz/',
            'assets' => (defined('CONFIG_PATH') ? CONFIG_PATH : '') . '/custom/templates/Mooz/core/assets/',
        );
        $NamelessMC['core']['assets'] =  (defined('CONFIG_PATH') ? CONFIG_PATH : '') . '/core/assets/';
        parent::__construct($template['name'], $template['version'], $template['nl_version'], $template['author']);
        $this->addCSSFiles(array(
            $template['assets'] . 'css/material.css' => array('async' => "yes"),
            $template['assets'] . 'css/bootstrap-grid.min.css' => array('async' => "yes"),
            $template['assets'] . 'css/all.min.css' => array('async' => "yes"),
            $template['assets'] . 'css/toastr.min.css' => array(),
            $template['assets'] . 'semantic-ui/transition.min.css' => array(),
            $template['assets'] . 'semantic-ui/popup.min.css' => array(),
            $NamelessMC['core']['assets'] . 'plugins\tinymce\plugins\spoiler\css\spoiler.css' => array('async' => "yes"),
            //Temp
            $template['assets'] . 'css/styles.php' => array(),
        ));
        $this->_settings = ROOT_PATH . '/custom/templates/Mooz/core/panel/index.php';

        if ($Mooz_General['WEB_FUE'] == '1') {
            $this->addCSSFiles(array(
                $template['assets'] . 'css/failsafe.css' => array('async' => "yes"),
            ));
            $this->addJSFiles(array(
                $template['assets'] . 'js/failsafe.js' => array('async' => "yes"),
            ));
        }

        $MoozOptions['ANI'] = 'true';

        if ($MoozOptions['ANI'] == 'true') {
            $this->addCSSFiles(array(
                $template['assets'] . 'css/animate.css' => array('async' => "yes"),
            ));
        }
        $this->addJSFiles(array(
            $template['assets'] . 'js/jquery.min.js' => array(),
            $template['assets'] . 'js/popper.min.js' => array(),
            $template['assets'] . 'js/jquery.cookie.js' => array(),
            $template['assets'] . 'js/bootstrap.min.js' => array(),
            $template['assets'] . 'js/material.js' => array(),
            $template['assets'] . 'semantic-ui/transition.min.js' => array(),
            $template['assets'] . 'semantic-ui/popup.min.js' => array(),
            $NamelessMC['core']['assets'] . 'plugins\tinymce\plugins\spoiler\js\spoiler.js' => array(),
            $template['assets'] . 'js/toastr.min.js' => array(),
        ));

        // Define chatbox script path
        define('CHATBOX_SCRIPT', $template['assets'] . 'js/chatbox.js');

        if ($Mooz_General['WEB_TEM'] == '1') {
            $this->addJSFiles(array(
                'https://twemoji.maxcdn.com/v/13.0.0/twemoji.min.js' => array('integrity' => "sha384-avLpk7eChiSgpDvwa4N7hvg9vj6V9sfFmGHurVkPOlWUalASzcO3d2x3qcbQqhsH", 'crossorigin' => "anonymous"),
                $NamelessMC['core']['assets'] . 'plugins/emojionearea/js/emojionearea.min.js' => array('defer' => "yes"),
            ));
            $this->addCSSFiles(array(
                $NamelessMC['core']['assets'] . 'plugins/emojionearea/css/emojionearea.min.css' => array('defer' => "yes"),
            ));
            $this->addJSScript('
				twemoji.parse(document.body);
			');
        }
        $smarty->assign(array(
            'TEMPLATE' => $template,
        ));
        $this->_template = $template;
        $this->_mooz = $Mooz_General;
        $this->_language = $language;
        $this->_smarty = $smarty;
        $this->_user = $user;
        $this->_pages = $pages;
        $this->_cache = $cache;
        $AENH = file_get_contents(ROOT_PATH . '/modules/Core/pages/home.php');

        if (!strpos($AENH, '$Verificador')){
            try {
                if (is_readable(ROOT_PATH . '/custom/templates/Mooz/core/replace/home.php')) {
                    $ALMH = file_get_contents(ROOT_PATH . '/custom/templates/Mooz/core/replace/home.php');
                }
                if(is_writable(ROOT_PATH . '/modules/Core/pages/home.php')){
                    $file = fopen(ROOT_PATH . '/modules/Core/pages/home.php','w');
                    fwrite($file, $ALMH);
                    fclose($file);
                }
            } catch (\Throwable $th) {
                //throw $th;
            }
        }
    }

    public function getSettings(){
        return $this->_settings;
    }

    public function onPageLoad() {

        $this->addCSSFiles(array(
            $this->_template['assets'] . 'css/custom.css' => array('async' => "yes"),
        ));
        //Ruta
        $route = (isset($_GET['route']) ? rtrim($_GET['route'], '/') : '/');
        $this->_smarty->assign(array(
            'SITE_URL_SET' => $route,
        ));
        //Java Script Variables
        $JSVariables = array(
            'siteName' => SITE_NAME,
            'Mantenimiento' => $this->_language->get('admin', 'maintenance_enabled'),
            'siteURL' => URL::build('/'),
            'fullSiteUrl' => Util::getSelfURL() . ltrim(URL::build('/'), '/'),
            'page' => PAGE,
            'avatarSource' => Util::getAvatarSource(),
            'copied' => $this->_language->get('general', 'copied'),
            'cookieNotice' => $this->_language->get('general', 'cookie_notice'),
            'noMessages' => $this->_language->get('user', 'no_messages'),
            'newMessage1' => $this->_language->get('user', '1_new_message'),
            'newMessagesX' => $this->_language->get('user', 'x_new_messages'),
            'noAlerts' => $this->_language->get('user', 'no_alerts'),
            'newAlert1' => $this->_language->get('user', '1_new_alert'),
            'newAlertsX' => $this->_language->get('user', 'x_new_alerts'),
            'bungeeInstance' => $this->_language->get('general', 'bungee_instance'),
            'andMoreX' => $this->_language->get('general', 'and_x_more'),
            'noPlayersOnline' => $this->_language->get('general', 'no_players_online'),
            'offline' => $this->_language->get('general', 'offline'),
            'confirmDelete' => $this->_language->get('general', 'confirm_deletion'),
            'debugging' => ((defined('DEBUGGING') && DEBUGGING == 1) ? '1' : '0'),
            'loggedIn' => ($this->_user->isLoggedIn() ? '1' : '0'),
            'cookie'  => (defined('COOKIE_NOTICE') ? '1' : '0'),
            'loadingTime' => ((defined('PAGE_LOADING') && PAGE_LOADING == 1) ? PAGE_LOAD_TIME : ''),
            'route' => $route
        );
        $JSVars = '';
        $i = 0;
        foreach ($JSVariables as $var => $value) {
            $JSVars .= ($i == 0 ? 'var ' : ', ') . $var . ' = "' . $value . '"';
            $i++;
        }

        if (PAGE === 'cc_messaging') {
            $this->addJSFiles(array(
                $this->_template['assets'] . 'plugin/eoa/emojionearea.min.js' => array(),
            ));$this->addCSSFiles(array(
                $this->_template['assets'] . 'plugin/eoa/emojionearea.min.css' => array(),
            ));
        }
        $this->addJSScript($JSVars);
        $this->addJSFiles(array(
            $this->_template['assets'] . 'js/core/core.js' => array(),
            $this->_template['assets'] . 'js/core/user.js' => array(),
            $this->_template['assets'] . 'js/core/pages.js' => array(),
            $this->_template['assets'] . 'js/core/chuchuwa.js' => array(),
            $this->_template['assets'] . 'js/scripts.js' => array(),
        ));

        foreach($this->_pages->getAjaxScripts() as $script){
            $this->addJSScript('$(document).ready(function(){ $.getJSON(\'' . $script . '\', function(data) {}); });');
        }

        $this->addJSScript('console.log("Xemah is god")');
    }
    //Agregar Archivos CSS
    public function addCSSFiles($files){
        if(is_array($files) && count($files)){
            foreach($files as $href => $file)
                $this->_css[] = '<link rel="stylesheet"  href="' . $href . '"'. (isset($file['defer']) ? ' defer=""' : '') . (isset($file['async']) ? ' async=""' : '') . (isset($file['integrity']) ? ' integrity="' . $file['integrity'] . '"' : '') . (isset($file['crossorigin']) ? ' crossorigin="' . $file['crossorigin'] . '"' : '') . '>';
        }
    }
    //Agregar Estilos CSS
    public function addCSSStyle($style = null){
        if($style)
            $this->_css[] = '<style>' . $style . '</style>';
    }
    //Agregar Archivos JavaScript
    public function addJSFiles($files){
        if(is_array($files) && count($files)){
            foreach($files as $href => $file)
                $this->_js[] = '<script type="text/javascript" src="' . $href . '"'. (isset($file['media']) ? ' media="' . $file['integrity'] . '"' : '') . (isset($file['defer']) ? ' defer=""' : '') . (isset($file['async']) ? ' async=""' : '') . (isset($file['integrity']) ? ' integrity="' . $file['integrity'] . '"' : '') . (isset($file['crossorigin']) ? ' crossorigin="' . $file['crossorigin'] . '"' : '') . '></script>';
        }
    }
    //Agregar Scripts JavaScript
    public function addJSScript($script = null){
        if($script)
            $this->_js[] = '<script type="text/javascript">' . $script . '</script>';
    }
}
$template = new Mooz_Template($cache, $smarty, $language, $user, $pages);
