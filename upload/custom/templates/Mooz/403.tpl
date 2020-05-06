{include file='header.tpl'}
{include file='navbar.tpl'}

    <div class="container" id="error-403">
        <div class="card card-news">
            <div class="card-header">
                <span class="card-title">
                    <i class="fa fa-lock"></i> {$403_TITLE}
                </span>
            </div>
            <div class="card-body centro">
                <p>{$CONTENT}</p>
                {if !isset($LOGGED_IN_USER)}
                    <p>{$CONTENT_LOGIN}</p>
                {/if}
                <div class="btn-group">
                  <a class="btn btn-primary" onclick="javascript:history.go(-1)"><span class="blanco">{$BACK}</span></a>
                  {if isset($LOGGED_IN_USER)}
                    <a class="btn btn-secondary" href="{$SITE_HOME}"><span class="blanco">{$HOME}</span></a>
                  {else}
                    <a class="btn btn-secondary"  href="{$LOGIN_LINK}"><span class="blanco">{$LOGIN}</span></a>
                  {/if}
            </div>
        </div>
    </div>
        
{include file='footer.tpl'}