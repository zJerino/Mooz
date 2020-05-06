<!DOCTYPE html>
<html {$HTMLCLASS}{$HTMLLANG}{$HTMLRTL}>
    <head>
        <meta charset="utf-8">
        <meta content="initial-scale=1, shrink-to-fit=no, width=device-width" name="viewport">
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
        <title>{$TITLE} &bull; {$WN_VALUE}</title>
		<link rel="icon" type="image/png" href="{$MZ_FAVICON}">
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
        
        <meta name="author" content="{$SITE_NAME}">
        <meta name='description' content="{$WB_VALUE}"/>
        <meta name='keywords' content='{$PAGEKEYWORDS}' />
        
        <meta property="og:title" content="{$TITLE} &bull; {$WN_VALUE}" />
        <meta property="og:type" content="website" />
        <meta property="og:url" content="{$OG_URL}" />
        <meta property="og:image" content="{$MZ_LOGO}" />
        <meta property='og:description' content='{$WB_VALUE}' />
        
        {foreach from=$fspeedcss item=styles}
            {$styles}
        {/foreach}
        {foreach from=$TEMPLATE_CSS item=css}
            {$css}
        {/foreach}
        
        {if ($S_ANIMATIONS == yes)}
            <link rel="stylesheet" href="{$TEMPLATE.path}css/animate.css" async>
        {/if}
        {if ($CCM_BETA == block)}
            <link rel="stylesheet" href="{$TEMPLATE.path}css/jquery-ui.min.css" async>
        {/if}
        
    </head>

    <body id="page-{if is_numeric($smarty.const.PAGE)}{$TITLE}{else}{$smarty.const.PAGE}{/if}" {if isset($GLOBAL_WARNING_TITLE)}class="modal-open"{/if} async class="d-none">
        <main id="wrapper">