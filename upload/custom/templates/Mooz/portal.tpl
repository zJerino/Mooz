<!DOCTYPE html>
<html {$HTMLCLASS}{$HTMLLANG}{$HTMLRTL}>
    <head>
        <meta charset="utf-8">
        <meta content="initial-scale=1, shrink-to-fit=no, width=device-width" name="viewport">
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
        
        <meta name="author" content="zJerino"/>

        <!-- Primary Meta Tags -->
        <title>{$TITLE} • {$MZ_GS.WEB_NAME}</title>
        <meta name="title" content="{$TITLE} • {$MZ_GS.WEB_NAME}">
        {if isset($PAGE_DESCRIPTION) && $PAGE_DESCRIPTION|count_characters > 0} <meta name="description" content="{$PAGE_DESCRIPTION}" /> {else} <meta name="description" content="{$MZ_GS.WEB_DESC}"/> {/if}
        {if isset($PAGE_KEYWORDS) && $PAGE_KEYWORDS|count_characters > 0} <meta name="keywords" content="{$PAGE_KEYWORDS}" /> {else} <meta name="keywords" content="{$MZ_GS.WEB_KEYW}" /> {/if}

        <!-- Open Graph / Facebook -->
        <meta property="og:type" content="website">
        <meta property="og:url" content="{$OG_URL}">
        <meta property="og:title" content="{$TITLE} • {$MZ_GS.WEB_NAME}">

        {if isset($PAGE_DESCRIPTION) && $PAGE_DESCRIPTION|count_characters > 0} <meta property="og:description" content="{$PAGE_DESCRIPTION}" /> {else} <meta property="og:description" content="{$MZ_GS.WEB_DESC}"/> {/if}
        <meta property="og:image" content="{$MZ_GS.WEB_LOGO}">
        
        <!-- Twitter -->
        <meta property="twitter:card" content="summary_large_image">
        <meta property="twitter:url" content="{$OG_URL}">
        <meta property="twitter:title" content="{$TITLE} • {$MZ_GS.WEB_NAME}">
        {if isset($PAGE_DESCRIPTION) && $PAGE_DESCRIPTION|count_characters > 0} <meta property="twitter:description" content="{$PAGE_DESCRIPTION}" /> {else} <meta property="twitter:description" content="{$MZ_GS.WEB_DESC}"/> {/if}
        <meta property="twitter:image" content="{$MZ_GS.WEB_LOGO}">

        <link rel="icon" type="image/png" href="{$MZ_GS.WEB_LOGO}">
        
        {foreach from=$fspeedcss item=styles}
            {$styles}
        {/foreach}
        {foreach from=$TEMPLATE_CSS item=css}
            {$css}
        {/foreach}
</head>

    <body id="page-{if is_numeric($smarty.const.PAGE)}{$TITLE}{else}{$smarty.const.PAGE}{/if}" class="{if isset($GLOBAL_WARNING_TITLE)}modal-open{/if}" data-scrollbar>
        <main id="wrapper" style="background-image: url('{$TEMPLATE.path}img/portal.jpg');background-clip: content-box;background-attachment: scroll;background-repeat: no-repeat;background-size: cover;background-position: center;height: 100%;">
            asd
        </main>
        {if isset($GLOBAL_WARNING_TITLE)}
            <div class="modal-open modal fade show" id="modal-acknowledge" tabindex="-1" role="dialog" aria-labelledby="modal-acknowledge" aria-modal="true" style="padding-right: 10px; display: block;">
                <div class="modal-dialog" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title">{$GLOBAL_WARNING_TITLE}</h5>
                        </div>
                        <div class="modal-body">
                            <p>{$GLOBAL_WARNING_REASON}</p>
                        </div>
                        <div class="modal-footer">
                            <a href="{$GLOBAL_WARNING_ACKNOWLEDGE_LINK}" class="btn btn-secondary">{$GLOBAL_WARNING_ACKNOWLEDGE}</a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="modal-backdrop fade show"></div>
        {/if}
            {if isset($NEW_UPDATE) && ($NEW_UPDATE_URGENT != true)}
                <script src="{$TEMPLATE.path}/js/core/update.js"></script>
            {/if}
        </main>
                {foreach from=$TEMPLATE_JS item=script}
                    {$script}
                {/foreach}
                {foreach from=$fspeedjs item=scripts}
                    {$scripts}
                {/foreach}
                
                {if isset($MAINTENANCE_ENABLED)}
                    <script type="text/javascript">toastr.error(Mantenimiento)</script>
                {/if}
        </body>
        </html>