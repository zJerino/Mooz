<?php
/*
 *	Made by Samerton
 *  https://github.com/NamelessMC/Nameless/
 *  NamelessMC version 2.0.0-pr7
 *
 *  License: MIT
 *
 *  Mooz settings No modifique por favor podria dañar la configuracion.
 */

// Custom language
$Mooz_lenguaje = new Language(ROOT_PATH . '/custom/templates/Mooz/template_settings/language', LANGUAGE);

if (isset($_POST["WebName"]) && isset($_POST["WebDescrip"]) && isset($_POST["bodycolor"]) && isset($_POST["color1"]) && isset($_POST["color2"]) && isset($_POST["banner"]) && isset($_POST["secondary"]) && isset($_POST["logo"]) && isset($_POST["favicon"]) && isset($_POST["footer"])  && isset($_POST["success"]) && isset($_POST['checkbox']) && isset($_POST['ANUNCIO_ENABLE']) && isset($_POST['DescriptAnuncio']) && isset($_POST['TitleAnuncio']) && isset($_POST["info"]) && isset($_POST["CUSTOM_CONTEX_MENU"]) && isset($_POST["warning"]) && isset($_POST["ANIMATIONS"]) && isset($_POST["danger"])){
        
    if(isset($_POST['checkbox']) && $_POST['checkbox'] == 1){
        $checkbox = "animated pulse slow infinite";
    }   else    {
        $checkbox = "";
    }
    
    if(isset($_POST['ANUNCIO_ENABLE']) && $_POST['ANUNCIO_ENABLE'] == 1){
        $anunciostatus = "yes";
    }   else    {
        $anunciostatus = "";
    }
    if(isset($_POST['CUSTOM_CONTEX_MENU']) && $_POST['CUSTOM_CONTEX_MENU'] == 1){
        $ccm = "block";
    }   else    {
        $ccm = "none";
    }
    if(isset($_POST['ANIMATIONS']) && $_POST['ANIMATIONS'] == 1){
        $S_AANIMACIONES = "yes";
    }   else    {
        $S_AANIMACIONES = "no";
    }
    
    $arr_mz_datos = array(
        'WEBNAME'=> $_POST["WebName"], //Nombre del sitio web
        'WEBDESCRIP'=> $_POST["WebDescrip"], // Descripccion del sitio web para SEO
        'CHECKBOX'=> $checkbox, //Opccion de habilitar el Logo Animado de Mooz Template
        'TEXTO_DE_FOOTER'=> $_POST["footer"], //Texto que aparecera en el Footer o Pie de la pagina
        'COLOR1'=> $_POST["color1"], //Color 1 que se usa para hacer el degradado del tema
        'COLOR2'=> $_POST["color2"], //color 2 que se usa para hacer el degradado del tema
        'SECONDARY'=> $_POST["secondary"], //Color secundario del tema usado en var(--secondary)
        'SUCCESSV'=> $_POST["success"], //Color de Correcto usado en var(--success)
        'INFOV'=> $_POST["info"], //Color de Informacion usado en  var(--info)
        'WARNINGV'=> $_POST["warning"], //Color de Advertencia usado en var(--warning)
        'DANGERV'=> $_POST["danger"], //Color de Peligro o error usado en var(--danger)
        'BODY'=> $_POST["bodycolor"],  //Color del fondo de la pagina usado en var(--body)
        'BANNER'=> $_POST["banner"], //Imagen del Banner de inicio
        'LOGOTIPO'=> $_POST["logo"], //Logo del sitio web
        'ICONODEARRIBA'=> $_POST["favicon"], //Favicon del sitio web preferible mente sea el mismo que el logo tipo
        'T_ANUNCIO'=> $_POST["TitleAnuncio"], //Esto esta en implementacion
        'D_ANUNCIO'=> $_POST["DescriptAnuncio"], //En implementacion :p
        'ANUNCIO_ENABLE'=> $anunciostatus, //Esto habilida el modulo de Anuncio de Mooz Template
        'CCM'=> $ccm, //Esto habilida el modulo de Menu contextual perzonalizado de Mooz Template (Esta Opccion podria alentizar la carga de su pagina web ya que esta en modo de prueba)
        'S_ANIMACIONES'=> $S_AANIMACIONES //Esto habilida las animaciones especificamente el archivo animate.css
    );
//FEJSN
    $json_string = json_encode($arr_mz_datos);
    $file = ROOT_PATH . '/custom/templates/Mooz/config/config.json';
    file_put_contents($file, $json_string);
}


//FLJSN
$mz_datosxd = file_get_contents(ROOT_PATH . '/custom/templates/Mooz/config/config.json');
$mz_datos = json_decode($mz_datosxd, true);


$smarty->assign(array(
	'SUBMIT' => $language->get('general', 'submit'),
	'LEAVE' => $Mooz_lenguaje->get('language', 'LEAVE'),
	'COLORES' => $Mooz_lenguaje->get('language', 'colores'),
	'IMAGENES' => $Mooz_lenguaje->get('language', 'imagenes'),
	'SETTINGS_TEMPLATE' => ROOT_PATH . '/custom/templates/Mooz/template_settings/lol.php',
	'CONFIG_PATH' => '/../config/config.json',
    // TITULOS
	'MOOZ_TEMPLATE' => $Mooz_lenguaje->get('language', 'MOOZ_TEMPLATE'),
	'General' => $Mooz_lenguaje->get('language', 'General_title'),
	'Estilos' => $Mooz_lenguaje->get('language', 'Estilos_title'),
	'Imagenes' => $Mooz_lenguaje->get('language', 'Imagenes_title'),
	'Otros' => $Mooz_lenguaje->get('language', 'Otros_title'),
    // Nombres de las variables
    'WN_TITLE' => $Mooz_lenguaje->get('language', 'WN_Name'),
    'carrucel' => $Mooz_lenguaje->get('language', 'carrucel'),
    'ANIMATE_LOGO' => $Mooz_lenguaje->get('language', 'ANIMATE_LOGO'),
    'WD_TITLE' => $Mooz_lenguaje->get('language', 'WD_Name'),
	'COLOR1' => $Mooz_lenguaje->get('language', 'color1_title'),
	'COLOR2' => $Mooz_lenguaje->get('language', 'color2_title'),
	'TSUCCESS' => $Mooz_lenguaje->get('language', 'success_title'),
	'TINFO' => $Mooz_lenguaje->get('language', 'info_title'),
	'TWARNING' => $Mooz_lenguaje->get('language', 'warning_title'),
	'TDANGER' => $Mooz_lenguaje->get('language', 'danger_title'),
	'SECONDARY_TITLE' => $Mooz_lenguaje->get('language', 'secondary_title'),
	'LOGO_TITLE' => $Mooz_lenguaje->get('language', 'logo_title'),
	'FAVICON_TITLE' => $Mooz_lenguaje->get('language', 'favicon_title'),
	'FOOTER_TITLE' => $Mooz_lenguaje->get('language', 'footer_title'),
	'BANNER_TITLE' => $Mooz_lenguaje->get('language', 'banner_title'),
	'Principales' => $Mooz_lenguaje->get('language', 'Principales'),
	'Contenido' => $Mooz_lenguaje->get('language', 'Contenido'),
	'Otrosxd' => $Mooz_lenguaje->get('language', 'Otrosxd'),
	'Imagen' => $Mooz_lenguaje->get('language', 'Imagen'),
	'Image' => $Mooz_lenguaje->get('language', 'Image'),
	'ANUNCIO' => $Mooz_lenguaje->get('language', 'ANUNCIO'),
	'C_title' => $Mooz_lenguaje->get('language', 'C_title'),
	'C_Descri' => $Mooz_lenguaje->get('language', 'C_Descri'),
	'A_T_ANUNCIO' => $Mooz_lenguaje->get('language', 'A_T_ANUNCIO'),
	'A_D_ANUNCIO' => $Mooz_lenguaje->get('language', 'A_D_ANUNCIO'),
    // Values    
	'WN_VALUE' => $mz_datos["WEBNAME"],
	'WB_VALUE' => $mz_datos["WEBDESCRIP"],
	'COLOR1_VALUE' => $mz_datos["COLOR1"],
	'COLOR2_VALUE' => $mz_datos["COLOR2"],
	'BODY_COLOR_VALUE' => $mz_datos["BODY"],
	'SECONDARY_VALUE' => $mz_datos["SECONDARY"],
	'LOGO_VALUE' => $mz_datos["LOGOTIPO"],
	'BANNER_VALUE' => $mz_datos["BANNER"],
	'FAVICON_VALUE' => $mz_datos["ICONODEARRIBA"],
	'FOOTER_VALUE' => $mz_datos["TEXTO_DE_FOOTER"],
	'MZ_FUNCIONANDO' => $mz_datos["MZ_FUNCIONANDO"],
	'SUCCESSVALUE' => $mz_datos["SUCCESSV"],
	'INFOVALUE' => $mz_datos["INFOV"],
	'WARNINGVALUE' => $mz_datos["WARNINGV"],
	'DANGERVALUE' => $mz_datos["DANGERV"],
	'TA_VALUE' => $mz_datos["T_ANUNCIO"],
	'TD_VALUE' => $mz_datos["D_ANUNCIO"],
	'CLOUD' => $mz_datos["CHECKBOX"],
	'CCM' => $mz_datos["CCM"],
	'ANUNCIO_ENABLE' => $mz_datos["ANUNCIO_ENABLE"],
	'S_ANIMATIONS' => $mz_datos["S_ANIMACIONES"],
));