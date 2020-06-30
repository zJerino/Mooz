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

        <script>
            // Only for Mooz Template
            // No Copy :( 
            document.addEventListener("DOMContentLoaded", function() {
                var lazyImages = [].slice.call(document.querySelectorAll("img.lazy"));

                if ("IntersectionObserver" in window) {
                    let lazyImageObserver = new IntersectionObserver(function(entries, observer) {
                        entries.forEach(function(entry) {
                            if (entry.isIntersecting) {
                                let lazyImage = entry.target;
                                lazyImage.src = lazyImage.dataset.src;
                                lazyImage.srcset = lazyImage.dataset.srcset;
                                lazyImage.classList.remove("lazy");
                                lazyImageObserver.unobserve(lazyImage);
                            }
                        });
                    });
                    lazyImages.forEach(function(lazyImage) {
                        lazyImageObserver.observe(lazyImage);
                    });
                } else {
                    // Possibly fall back to a more compatible method here
            }
        });
        </script>
        
    {$ParticlesCSS}
</head>

    <body id="page-{if is_numeric($smarty.const.PAGE)}{$TITLE}{else}{$smarty.const.PAGE}{/if}" class="{if isset($GLOBAL_WARNING_TITLE)}modal-open{/if}" data-scrollbar>
        <main id="wrapper">
{$PARTICLESJsD}