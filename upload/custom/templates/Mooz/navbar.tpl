<div class="Panel-de-navegacion">
    
  <div class="userbar">
      {foreach from=$USER_SECTION key=name item=item}
              {if isset($item.items)}
                  {if ($name == "alerts") || ($name == "pms")}  
                      <li class="nav-item dropdown">
                          <div class="nav-link nada" id="button-{$name}" data-variation="mini" data-toggle="popup">{$item.icon}</div>
                          <div class="ui popup">
                            <a class="item-dropdown">{$item.title}</a>
                            <div id="list-{$name}">
                                <a class="dropdown-item">{$LOADING}</a>
                            </div>
                            <a class="dropdown-item" href="{$item.link}">{$item.meta}</a>
                          </div>
                      </li>
            {elseif ($name == "account")}
                    <li class="nav-item  ml-auto">
                      <div class="nav-link" id="button-{$name}" data-variation="mini" data-toggle="popup"><i class="fa fa-user"></i> {$LOGGED_IN_USER.username}</div>
                      <div class="ui popup">
                        <a class="item-dropdown">{$item.title}</a>
                        <div id="awaslokas">
                              {foreach from=$item.items item=dropdown}
                                {if isset($dropdown.seperator)}
                                  <div class="dropdown-divider"></div>
                                {else}
                                  <a class="dropdown-item" href="{$dropdown.link}" target="{$dropdown.target}">{$dropdown.icon} {$dropdown.title}</a>
                                {/if}
                              {/foreach}
                        </div>
                      </div>
                  </li>
            {/if}
      {else}
        {if ($name == "panel")}
                  <li class="nav-item">
                      <a class="nav-link" href="{$item.link}" style="color: inherit" target="{$item.target}">{$item.icon}</a>
                  </li>
        {elseif ($name == "register")}
                  <li class="nav-item">
                      <a class="nav-link" style="color: inherit" href="{$item.link}" target="{$item.target}">{$item.icon} {$item.title}</a>
                  </li>
        {else}
                  <li class="nav-item ml-auto">
                      <a class="nav-link" style="color: inherit" href="{$item.link}" target="{$item.target}">{$item.icon} {$item.title}</a>
                  </li>
        {/if}
      {/if}
    {/foreach}
  </div>
<nav id="navbar" class="navbar navbar-expand-lg navbar-primary">
<div class="container" id="navbar123123">
      <a class="navbar-brand" href="{$SITE_HOME}">{$MZ_GS.WEB_NAME}</a>
      <a class="navbar-toggler" data-target="#sidenav" data-toggle="navdrawer"><i class="material-icons">reorder</i></a>

      <div class="collapse navbar-collapse" id="navbarSupportedContent">
          <ul class="navbar-nav ml-auto">
              {foreach from=$NAV_LINKS key=name item=item}
                  {if isset($item.items)}
                    <div class="nav-item nav-link dropdown-toggle"  data-variation="mini" data-toggle="popup2" data-position="bottom right">{$item.title}</div>
                      <div class="ui popup bottom right">
                        <a class="item-dropdown">{$item.title}</a>
                        <div id="awaslokas">
                            {foreach from=$item.items item=dropdown}
                              {if isset($dropdown.seperator)}
                                <div class="dropdown-divider"></div>
                              {else}
                                <a class="dropdown-item" href="{$dropdown.link}" target="{$dropdown.target}">{$dropdown.icon} {$dropdown.title}</a>
                              {/if}
                            {/foreach}
                        </div>
                      </div>
                  {else}
                      <li class="nav-item {if isset($item.active)}active{/if}">
                          <a class="nav-link" href="{$item.link}" target="{$item.target}">{$item.icon} {$item.title}</a>
                      </li>
                  {/if}
              {/foreach}
          </ul>
        </div>
  </div>
</nav>
</div>
<div class="jumbotron-fluid bheader" style="box-shadow: none;margin-bottom: 25px;background-image: url('{if isset($MZ_GS.WEB_BANN)} {$MZ_GS.WEB_BANN} {/if}')">    <br />
  <div class="container">
      <center>
          <i class="variable123123123">
              <img class="lazy" data-src="{if isset($MZ_GS.WEB_LOGO)}{$MZ_GS.WEB_LOGO}{else}{$TEMPLATE.path}img/logo.png{/if}" data-srcset="{if isset($MZ_GS.WEB_LOGO)}{$MZ_GS.WEB_LOGO}{else}{$TEMPLATE.path}img/logo.png{/if}" {if ($LOGO_ANIMADO gte animated)}class="{$LOGO_ANIMADO}"{/if} style="width: 220px;">
          </i>
      </center>
  </div>
</div>
<div aria-hidden="true" class="navdrawer" id="sidenav" tabindex="-1">
<div class="navdrawer-content">
  <div class="navdrawer-header">
    <a class="navbar-brand px-0" href="{$SITE_HOME}">{$MZ_GS.WEB_NAME}</a>
  </div>
  <nav class="navdrawer-nav">
      {foreach from=$NAV_LINKS key=name item=item}
          {if isset($item.items)}
            <li class="nav-item {if isset($item.active)}active{/if}">
              <a class="nav-link" data-toggle="collapse" data-target="#collapseExample" aria-expanded="false" aria-controls="collapseExample">{$item.icon} {$item.title}</a>
            </li> 
            <div class="collapse" id="collapseExample">
              {foreach from=$item.items item=dropdown}
                {if isset($dropdown.seperator)}
                  <hr>
                {else}
                  <li class="nav-item">
                    <a class="nav-link" href="{$dropdown.link}" target="{$dropdown.target}">{$dropdown.icon} {$dropdown.title}</a>
                  </li>
                {/if}
              {/foreach}
            </div>
          {else}
              <li class="nav-item {if isset($item.active)}active{/if}">
                  <a class="nav-link" href="{$item.link}" target="{$item.target}">{$item.icon} {$item.title}</a>
              </li>
          {/if}
      {/foreach}
  </nav>
</div>
</div>
<div class="container">
  {if isset($NEW_UPDATE)}
      <div class="alert alert-success">
          <div class="container" style="display: inline;">
              <i class="fa fa-exclamation-circle"></i>
              <span>
                  <b>{$NEW_UPDATE}</b> {$CURRENT_VERSION} {$NEW_VERSION}
              </span>
              <br />
              <a class="btn btn-primary" href="{$UPDATE_LINK}">{$UPDATE}</a>
          </div>
      </div>
  {/if}
                
{if isset($MAINTENANCE_ENABLED)}
<div class="alert alert-danger alert-dismissible" role="alert">
  <button class="close" data-dismiss="alert" aria-label="Close">
    <span aria-hidden="true">&times;</span>
  </button>
  {$MAINTENANCE_ENABLED}
</div>
{/if}
  
{if isset($MUST_VALIDATE_ACCOUNT)}
    <div class="alert alert-info">
      {$MUST_VALIDATE_ACCOUNT}
    </div>
{/if}
{if ($ANUNCIO_ENABLE gte yes)}
    <div class="alert alert-primary">
      <div class="h4 center">{$ANUNCIO_TITLE}</div>
       {$ANUNCIO_DESCRICTION}
   </div>
  {/if}
  
  <br />
</div>
<main>
<div class="container">
{if ($MZ_GS.WEB_ANUN == "1")}
  <div class="alert alert-{$MZ_AS.TIPO}">
    <b>{$MZ_AS.TITULO}</b>
    <p class="m-0">{$MZ_AS.DESCRI}</p>
  </div>
{/if}
</div>