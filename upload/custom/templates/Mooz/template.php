<?php
/*
 *	NamelessMC by Samerton |  Mooz Template by zJerino
 *
 *	License: MIT
 *
 */
if(!is_readable(ROOT_PATH . '/custom/templates/Mooz/')) {
	echo 'ERROR 0001';
	die();
}
chmod(ROOT_PATH . "/custom/templates/Mooz/core/settings/styles.json", 0777);
chmod(ROOT_PATH . "/custom/templates/Mooz/core/panel/KASDISAASDYIADG.php", 0777);
if(!is_readable(ROOT_PATH . '/custom/templates/Mooz/core/settings/styles.json')) {
	echo 'ERROR 0002';
	die();
}
if(!is_writable(ROOT_PATH . '/custom/templates/Mooz/core/settings/styles.json')) {
	echo 'ERROR 0003';
	die();
}
if(!is_readable(ROOT_PATH . '/custom/templates/Mooz/core/panel/KASDISAASDYIADG.php')) {
	echo 'ERROR 0004';
	die();
}
//CH
$cache->setcache('Mooz-baleehh');
//DMA
$DMA = ROOT_PATH . '/custom/templates/Mooz/core/panel/KASDISAASDYIADG.php';
if (file_exists($DMA)) {
	if (is_writable($DMA)) {
		if (is_readable($DMA)) {
			$Mooz_General = $cache->retrieve('General_Settigns');
			if (!empty($Mooz_General)) {
				$smarty->assign(array(
					'MZ_GS' => $Mooz_General,
				));

				$MzLang = new Language(ROOT_PATH . '/custom/templates/Mooz/core/language', LANGUAGE);
				require(ROOT_PATH . '/custom/templates/Mooz/core/panel/KASDISAASDYIADG.php');

				$resultados_anuncio = $cache->retrieve('ANUNCIO_Settigns');
				$resultados_footer = $cache->retrieve('FOOTERTEXT_Settigns');
				$smarty->assign(array(
					'MZ_AS' => $resultados_anuncio,
					'MZ_FS' => $resultados_footer,
					'MZ_LANG' => $FOOTER,
				));
			} else {
				
				$cache->setCache('Mooz-baleehh');
					$GENERAL_INPUT = array(
						'WEB_NAME' => 'Mooz', 
						'WEB_DESC' => "I'am Using Mooz Template", 
						'WEB_KEYW' => 'NamelesssMC, CMS, Mooz', 
						'WEB_LOGO' => (defined('CONFIG_PATH') ? CONFIG_PATH : '') . '/custom/templates/Mooz/img/logo.png', 
						'WEB_BANN' => (defined('CONFIG_PATH') ? CONFIG_PATH : '') . '/custom/templates/Mooz/img/banner.png', 
						'WEB_ANUN' => 1, 
						'WEB_TEM' => 1, 
						'WEB_FUE' => 1, 
						'WEB_ANI' => 1, 
					);
					$cache->store('General_Settigns', $GENERAL_INPUT);
				   try {
					$SCSS_INPUT = array(
						// COLORES PRIMARIOS
						'PRIMARY_OP' => 1, 
						'PRIMARY_1' => 'rgb(255, 224, 80)', 
						'PRIMARY_2' => 'rgb(255, 116, 116)', 
						'SECONDARY' => 'rgb(194, 194, 194)', 
						'LIGHT' => 'rgb(231, 231, 231)', 
						'DARK' => 'rgb(22, 22, 22)', 
						'SUCCESS' => "rgb(49, 206, 0)", 
						'INFO' => "rgb(2, 190, 249)", 
						'WARNING' => "rgb(247, 247, 0)", 
						'DANGER' => "rgb(253, 0, 0)", 
						// OTHERS
						'BODY' => "rgb(231, 231, 231)", 
						'F_1' => "rgb(73, 73, 73)", 
						'F_2' => "rgb(103, 103, 103)", 
						'F_3' => "rgb(243, 241, 241)", 
						'F_4' => "rgb(36, 36, 36)", 
						'CARD_B' => "rgb(255, 255, 255)", 
						'CARD_F' => "rgb(247, 247, 247)", 
						'FUENTE' => "@import url('https://fonts.googleapis.com/css2?family=Montserrat:wght@100;300;400;500;600;700&display=swap');", 
						'FUENTE2' => "font-family: 'Montserrat', sans-serif;", 
						'SFUENTE' => "0.9rem", 
					);
					$cache->store('SCSS_Settigns', $SCSS_INPUT);
					$json_string = json_encode($SCSS_INPUT, JSON_PRETTY_PRINT);
					$file = ROOT_PATH . '/custom/templates/Mooz/core/settings/styles.json';
					if (is_readable($file) && is_writable($file)) {
						file_put_contents($file, $json_string);
					} else {
						echo "Error al intentar configurar";
						die();
					}
						
		
					$success = 'Informacion enviada';
					
				   } catch (\Throwable $th) {
					   echo $th;
				   }            
				   try {
						
					$ANUNCIO_INPUT = array(
						// Anuncios
						'TITULO' => 'Example',
						'DESCRI' => 'Ejemplo de anuncio',
						'TIPO' => 'primary',
					);
					$cache->store('ANUNCIO_Settigns', $ANUNCIO_INPUT);
		
					$success = 'Informacion enviada';
					
				   } catch (\Throwable $th) {
					   echo $th;
				   }            
				   try {
						
					$FOOTERTEXT_INPUT = array(
						// Anuncios
						'FTEXTO' => 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptatem, ducimus velit illum omnis iure hic doloribus unde sequi tempore! Iure vel aliquid animi quae magni eligendi recusandae tempore voluptate modi.',
					);
					$cache->store('FOOTERTEXT_Settigns', $FOOTERTEXT_INPUT);
			
					$success = 'Informacion enviada';
					
				   } catch (\Throwable $th) {
					   echo $th;
				   }
			}
		} else {
			echo 'No podemos Leer DMA';
			echo 'ERROR 0005';
			die();
		}
	} else {
		echo 'No podemos Escribir en DMA';
		echo 'ERROR 0006';
		die();
	}
} else {
	echo 'No podemos encontrar DMA';
	echo 'ERROR 0007';
	die();
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
			'author' => '<a href="https://LaboratorioMC.com.ve/" target="_blank">zBaneado</a>',
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
			$template['assets'] . 'js/bootstrap.min.js' => array('async' => "yes"),
			$template['assets'] . 'js/material.js' => array('async' => "yes"),
			$template['assets'] . 'semantic-ui/transition.min.js' => array(),
			$template['assets'] . 'semantic-ui/popup.min.js' => array('defer' => "yes"),
			$NamelessMC['core']['assets'] . 'plugins\tinymce\plugins\spoiler\js\spoiler.js' => array('async' => "yes"),
			$template['assets'] . 'js/toastr.min.js' => array(),
		));
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
					echo "yes";
					$ALMH = file_get_contents(ROOT_PATH . '/custom/templates/Mooz/core/replace/home.php');
				}
				if(is_writable(ROOT_PATH . '/modules/Core/pages/home.php')){
					$file = fopen(ROOT_PATH . '/modules/Core/pages/home.php','w');
					fwrite($file, $ALMH);
					fclose($file);
				} else {
					die('ERROR POR FAVOR REVISE QUE LOS ARCHIVOS SEAN EDITABLES PARA SEGUIR CON LA INSTALACION CORRECTA <B>002</B>');
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
			$this->_template['assets'] . 'js/core/user.js' => array('defer' => "yes"),
			$this->_template['assets'] . 'js/core/pages.js' => array('async' => "yes"),
			$this->_template['assets'] . 'js/core/chuchuwa.js' => array('defer' => "yes"),
			$this->_template['assets'] . 'js/scripts.js' => array('async' => "yes"),
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
