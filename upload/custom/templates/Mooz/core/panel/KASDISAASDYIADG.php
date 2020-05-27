<?php
    
$NavItem = array(
    $MzLang->get('panel', 'NAV.1'), 
    $MzLang->get('panel', 'NAV.2'), 
    $MzLang->get('panel', 'NAV.3'), 
    $MzLang->get('panel', 'NAV.4'), 
    $MzLang->get('panel', 'NAV.5'), 
    $MzLang->get('panel', 'NAV.6'), 
    $MzLang->get('panel', 'NAV.7'), 
);   
$FOOTER = array(
    $MzLang->get('panel', 'ABOUT_US'), 
    $MzLang->get('panel', 'QUICK_LINK'), 
);
$smarty->assign(array(
    'MOOZ' => $MzLang->get('panel', 'Mooz'),
    'Mz_NAV' => $MzLang->get('panel', 'NAV'),
    'Mz_NAVI' => $NavItem,
));