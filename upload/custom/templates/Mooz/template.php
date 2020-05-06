<?php
/*
 *	NamelessMC by Samerton |  Mooz Template by zJerino
 *
 *	License: MIT
 *
 */

class Mooz_Template extends TemplateBase {
	private $_language, $_user, $_pages, $_template;
	
	public function __construct($cache, $smarty, $language, $user, $pages) {
        
        $Mooz_lenguaje = new Language(ROOT_PATH . '/custom/templates/Mooz/template_settings/language', LANGUAGE);
        
		$template = array(
			'name' => 'Mooz',
			'version' => '2.0.0-pr7',
			'nl_version' => "2.0.0-pr7",
			'author' => '<a href="https://Discord.zJerino.tk/" target="_blank">zJerino and Valeehh</a>',
		);        
		$template['path'] = (defined('CONFIG_PATH') ? CONFIG_PATH : '') . '/custom/templates/' . $template['name'] . '/';
		$template['core'] = (defined('CONFIG_PATH') ? CONFIG_PATH : '') . '/core/assets/';
		$site['url'] = URL::build('/');
		$ROOTURL = (defined('CONFIG_PATH') ? CONFIG_PATH : '');
		$this->_settings = ROOT_PATH . '/custom/templates/Mooz/template_settings/settings.php';
        
        
		parent::__construct($template['name'], $template['version'], $template['nl_version'], $template['author']);
        
        include (ROOT_PATH . '/custom/templates/Mooz/Config/template.custom.php');
        
		$this->addCSSFiles(array(
			$template['path'] . 'css/toastr.min.css' => array(),
		));
        
		$this->addJSFiles(array(
			$template['path'] . 'js/jquery.js' => array(),
			$template['path'] . 'js/popper.min.js' => array(),
			$template['path'] . 'js/jquery.cookie.js' => array(),
			$template['path'] . 'js/bootstrap.min.js' => array(),
			$template['path'] . 'js/material.js' => array(),
			$template['path'] . 'js/toastr.min.js' => array(),
		));
        
        $smarty->assign('TEMPLATE', $template);
        // Other variables
		$smarty->assign('FORUM_SPAM_WARNING_TITLE', $language->get('general', 'warning'));
		$this->_template = $template;$this->_language = $language;$this->_user = $user;	$this->_pages = $pages;
        
        //FLJSN
        $mz_datosxd = file_get_contents(ROOT_PATH . '/custom/templates/Mooz/config/config.json');
        $mz_datos = json_decode($mz_datosxd, true);
        
        
        
        $smarty->assign(array(
            'WN_VALUE' => $mz_datos["WEBNAME"],
            'LOGO_ANIMADO' => $mz_datos["CHECKBOX"],
            'WB_VALUE' => $mz_datos["WEBDESCRIP"],
            'COLOR1_VALUE' => $mz_datos["COLOR1"],
            'COLOR2_VALUE' => $mz_datos["COLOR2"],
            'SECONDARY_VALUE' => $mz_datos["SECONDARY"],
            'CCM_BETA' => $mz_datos["CCM"], 
            'MZ_LOGO' => $mz_datos["LOGOTIPO"],
            'MZ_BANNER' => $mz_datos["BANNER"],
            'MZ_FAVICON' => $mz_datos["ICONODEARRIBA"],
            'MZ_FOOTERTEXT' => $mz_datos["TEXTO_DE_FOOTER"],
            'WN_VALUE' => $mz_datos["WEBNAME"],
            'WB_VALUE' => $mz_datos["WEBDESCRIP"],
            'COLOR1_VALUE' => $mz_datos["COLOR1"],
            'COLOR2_VALUE' => $mz_datos["COLOR2"],
            'BODY_COLOR_VALUE' => $mz_datos["BODY"],
            'SECONDARY_VALUE' => $mz_datos["SECONDARY"],
            'SUCCESSVALUE' => $mz_datos["SUCCESSV"],
            'INFOVALUE' => $mz_datos["INFOV"],
            'WARNINGVALUE' => $mz_datos["WARNINGV"],
            'DANGERVALUE' => $mz_datos["DANGERV"],
            'LEAVE' => $Mooz_lenguaje->get('language', 'LEAVE'),
            'BACK' => $Mooz_lenguaje->get('language', 'BACK'),
            'V_Profile' => $Mooz_lenguaje->get('language', 'V_Profile'),
            'ANUNCIO_ENABLE' => $mz_datos["ANUNCIO_ENABLE"],
            'ANUNCIO_TITLE' => $mz_datos["T_ANUNCIO"],
            'ANUNCIO_DESCRICTION' => $mz_datos["D_ANUNCIO"],
            'S_ANIMATIONS' => $mz_datos["S_ANIMACIONES"],
        ));
        
        $this->addCSSStyle('
            :root{
                --primary: linear-gradient(to right, var(--color1), var(--color2)) !important;
                --color1: '.$mz_datos["COLOR1"].' !important;
                --color2: '.$mz_datos["COLOR2"].' !important;
                --secondary: '.$mz_datos["SECONDARY"].' !important;
                --body: '.$mz_datos["BODY"].' !important;
                --success: '.$mz_datos["SUCCESSV"].' !important;
                --info: '.$mz_datos["INFOV"].' !important;
                --warning: '.$mz_datos["WARNINGV"].' !important;
                --danger: '.$mz_datos["DANGERV"].' !important;
            }
        ');
        
        $smarty->assign(array(
            'QUICK_LINK' => $Mooz_lenguaje->get('language', 'QUICK_LINK'),
            'ABOUT_US' => $Mooz_lenguaje->get('language', 'ABOUT_US')
        ));

        $speedcss = array(
            '<link rel="stylesheet" href="'.$template['path'].'css/all.min.css" async>',
            '<link rel="stylesheet" href="'.$template['path'].'css/material.css" async>',
            '<link rel="stylesheet" href="'.$template['path'].'css/failsafe.css" async>', // Failsafe no es util
        );
        $speedjs = array(
            // Failsafe no es util
            '<script type="text/javascript" async src="'.$template['path'].'js/failsafe.js"></script>',
        );
        $smarty->assign('fspeedjs', $speedjs);
        $smarty->assign('fspeedcss', $speedcss);
        
        include (ROOT_PATH . '/custom/templates/Mooz/Config/Variables.php');
	}
	
	public function onPageLoad() {
        
        
        
		$this->addCSSFiles(array(
		    $this->_template['path'] . 'css/custom.css' => array()
		));
        //FLJSN
        $mz_datosxd = file_get_contents(ROOT_PATH . '/custom/templates/Mooz/config/config.json');
        $mz_datos = json_decode($mz_datosxd, true);
        $logoxdxd = $mz_datos["LOGOTIPO"];
        
	    $route = (isset($_GET['route']) ? rtrim($_GET['route'], '/') : '/');

		$JSVariables = array(
		    'siteName' => SITE_NAME,
		    'Mantenimiento' => $this->_language->get('admin', 'maintenance_enabled'),
		    'successTitle' => SUCCESS,
		    'successNotice' => SUCCESS_TITLE,
		    'errorTitle' => ERROR,
		    'errorNotice' => ERROR_TITLE,
		    'asdauishDasid' => $template['path'],
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
		    'logoxDxd' => $logoxdxd,
		    'route' => $route
		);
		
	    if (strpos($route, '/forum/topic/') !== false) {
			$this->addJSFiles(array(
			    $this->_template['path'] . 'js/jquery-ui.min.js' => array(),
			    $this->_template['path'] . 'js/bootstrap-tokenfield.min.js' => array()
			));
	    }
        
        if (strpos($route, '/profile/') !== false) {
			$this->addCSSFiles(array(
			    $this->_template['path'] . 'config/editor/emojionearea.css' => array(),
			    $this->_template['path'] . 'config/tinymce/skins/ui/oxide/skin.min.css' => array()
			));
            $this->addJSFiles(array(
			    $this->_template['path'] . 'config/editor/emojionearea.js' => array(),
			    $this->_template['path'] . 'config/tinymce/tinymce.min.js' => array()
			));
	    }
        if (strpos('cc_messaging') !== false) {
			$this->addCSSFiles(array(
			    $this->_template['path'] . 'config/editor/emojionearea.css' => array()
			));
            $this->addJSFiles(array(
			    $this->_template['path'] . 'config/editor/emojionearea.js' => array()
			));
	    }

	    $JSVars = '';
	    $i = 0;
		foreach ($JSVariables as $var => $value) {
		    $JSVars .= ($i == 0 ? 'var ' : ', ') . $var . ' = "' . $value . '"';
		    $i++;
		}
		
		$this->addJSScript($JSVars);
		
		$this->addJSFiles(array(
			$this->_template['path'] . 'js/core/core.js' => array(),
			$this->_template['path'] . 'js/core/user.js' => array(),
			$this->_template['path'] . 'js/core/pages.js' => array(),
			$this->_template['path'] . 'js/scripts.js' => array(),
		));
		
		foreach($this->_pages->getAjaxScripts() as $script)
		    $this->addJSScript('$.getJSON(\'' . $script . '\', function(data) {});');
	}
    

}

$template = new Mooz_Template($cache, $smarty, $language, $user, $pages);
