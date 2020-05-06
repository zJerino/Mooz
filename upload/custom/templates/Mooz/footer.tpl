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

<style>
.ir-arriba {
    display: none;
    padding: 11px 23px 8px 10px;
    background: var(--primary);
    font-size: 20px;
    color: #fff;
    cursor: pointer;
    position: fixed;
    bottom: 20px;
    right: 20px;
    box-shadow: 0px 0px 5px 0px #11111145;
    z-index: 500;
}
</style>
<span class="ir-arriba fa fa-angle-up fa-fw"></span>
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
</main>
        <footer>
            <div class="footer">
                <div class="row">
                    <div class="col">
                        <h1>{$ABOUT_US}</h1>
                        <p>
                            {$MZ_FOOTERTEXT}
                        </p>
                    </div>
                    <div class="col  d-none d-sm-none d-md-block">
                        <h1>{$QUICK_LINK}</h1>
                        <p>
                            {foreach from=$FOOTER_NAVIGATION key=name item=item}
                                {if isset($item.items)}
                                    {* Dropup *}
                                    <li class="nav-item">
                                        <a class="nav-link dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false">
                                            {$item.icon} {$item.title}
                                        </a>
                                        <div class="dropdown-menu">
                                            {foreach from=$item.items item=dropdown}
                                                <a class="dropdown-item" href="{$dropdown.link}" target="{$dropdown.target}">
                                                    {$dropdown.icon} {$dropdown.title}
                                                </a>
                                            {/foreach}
					                    </div>
                                    </li>
                                {else}
                                    {* Normal link *}
                                    <li class="nav-link" style="padding: 4px 1rem;">
                                        <a class="nav-item" href="{$item.link}">{$item.title}</a>
                                    </li>
                                {/if}
                            {/foreach}
                            <li class="nav-link" style="padding: 4px 1rem;">
                                <a class="nav-item" href="{$TERMS_LINK}">{$TERMS_TEXT}</a>
                            </li>
                            <li class="nav-link" style="padding: 4px 1rem;">
                                <a class="nav-item" href="{$PRIVACY_LINK}">{$PRIVACY_TEXT}</a> 
                            </li>
                        </p>
                    </div>
                    <div class="col">
                        <h1>Social</h1>
                        <p>
                            {foreach from=$SOCIAL_MEDIA_ICONS item=icon}
                                <a href="{$icon.link}"><i class="{if $icon.long neq 'envelope'}fab{else}fas{/if} fa-{$icon.long}-square fa-3x blanco"></i></a>
                            {/foreach}
                        </p>
                    </div>
                    <div class="col-12">
                        <div class="container">
                            <span class="float-left">
                                {if $PAGE_LOAD_TIME}
                                    <a data-toggle="tooltip" id="page_load"></a>
                                {else}
                                    Powered By <a href="https://namelessmc.com/">NamelessMC</a>
                                {/if}
                            </span>
                            <span class="float-right">
                                Mooz Template By <a href="https://Discord.zJerino.tk"><strong>zJerino</strong></a>
                            </span>
                        </div>
                    </div>
                </div>
            </div>
        </footer>
        {foreach from=$TEMPLATE_JS item=script}
            {$script}
        {/foreach}
{foreach from=$fspeedjs item=scripts}
            {$scripts}
        {/foreach}
        {if isset($MAINTENANCE_ENABLED)}
            <script type="text/javascript">toastr.error(Mantenimiento)</script>
        {/if}

    {if ($CCM_BETA == block)}
            <script src="{$TEMPLATE.path}config/others/context-menu.min.js"></script>
            <script src="{$TEMPLATE.path}js/jquery-ui.min.js"></script>
                <script  type="text/javascript">
                    var myMenu = [{
            // This example uses Font Awesome Iconic Font.
            icon: 'fa fa-home',
            // Menu Label
            label: '<a href="{$SITE_HOME}"> {$SITE_NAME}</a>',
            // Callback
            action: function(option, contextMenuIndex, optionIndex) {},
            // An array of submenu objects
            submenu: null,
            // is disabled?
            disabled: false   //Disabled status of the option
          },
          
         {
            icon: 'fa fa-link',
            label: '{$QUICK_LINK}',
            action: function(option, contextMenuIndex, optionIndex) {},
            submenu: [
                {foreach from=$FOOTER_NAVIGATION key=name item=item}
                      {if isset($item.items)}
                      {else}
                      {
                        icon: '{$item.icon}',
                        label: '<a href="{$item.link}">{$item.title}</a>',
                        action: function(option, contextMenuIndex, optionIndex) {},
                        submenu: null,
                        disabled: false
                      },
                      {/if}
                {/foreach}
                {
                    icon: '',
                    label: '<a href="{$TERMS_LINK}">{$TERMS_TEXT}</a>',
                    action: function(option, contextMenuIndex, optionIndex) {},
                    submenu: null,
                    disabled: false
                },
                {
                    icon: '',
                    label: '<a href="{$PRIVACY_LINK}">{$PRIVACY_TEXT}</a>',
                    action: function(option, contextMenuIndex, optionIndex) {},
                    submenu: null,
                    disabled: false
            }],
             disabled: false
         },                      
            {
            //Menu separator
            separator: true
            },
          {
            icon: 'fa fa-cogs',
            label: '<a href="https://zJerino.tk"> En Desarrollo</a>',
            action: function(option, contextMenuIndex, optionIndex) {},
            submenu: null,
            disabled: false
          }
        ];
    {literal}
        $('body').on('contextmenu', function(e) {
          e.preventDefault();
          superCm.createMenu(myMenu, e);
            animation: `{duration: 250, show: 'fadeIn', hide: 'fadeOut'}`;
        });
    {/literal}
         toastr.success('Listo')
        </script>
    {/if}
    </body>
</html>