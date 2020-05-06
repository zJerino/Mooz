<div class="Panel-de-navegacion">
    
    <div class="userbar">
        {foreach from=$USER_SECTION key=name item=item}
		            {if isset($item.items)}
                    {if ($name == "alerts") || ($name == "pms")}  
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle nada" id="button-{$name}" data-toggle="dropdown" aria-expanded="false">
                                {$item.icon}
                            </a>
                            <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdown">
                                <a class="dropdown-header">{$item.title}</a>
                                <div id="list-{$name}">
                                    <a class="dropdown-item">{$LOADING}</a>
                                </div>
                                <div class="dropdown-divider"></div>
                                <a class="dropdown-item" href="{$item.link}">{$item.meta}</a>
                            </div>
                        </li>
              {elseif ($name == "account")}
                    <li class="nav-item  ml-auto">
                        <a class="nav-link dropdown-toggle" id="button-{$name}" role="button" data-toggle="dropdown" data-trigger="hover" aria-haspopup="true" aria-expanded="false">
                            <i class="fa fa-user"></i> {$LOGGED_IN_USER.username}
                        </a>
                        <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdown">
                            <a class="dropdown-header">{$item.title}</a>
                            {foreach from=$item.items item=dropdown}
                                {if isset($dropdown.seperator)}
                                    <div class="dropdown-divider"></div>
                                {else}
				                    <a class="dropdown-item" href="{$dropdown.link}" target="{$dropdown.target}">{$dropdown.icon} {$dropdown.title}</a>
				                {/if}
				    {/foreach}
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
        <a class="navbar-brand" href="{$SITE_HOME}">{$WN_VALUE}</a>
        <a class="navbar-toggler" data-target="#sidenav" data-toggle="navdrawer"><i class="material-icons">reorder</i></a>

        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav mr-auto">
                {foreach from=$NAV_LINKS key=name item=item}
                    {if isset($item.items)}
                        <div class="dropdown">
                          <a class="btn btn-secondary dropdown-toggle" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            {$item.icon} {$item.title}
                          </a>
                          <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                            <a class="dropdown-header">{$item.title}</a>
                              <div class="dropdown-divider"></div>
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
<div class="jumbotron jumbotron-fluid bheader" style="box-shadow: none;margin-bottom: 25px;{if isset($MZ_BANNER)}background-image: url('{$MZ_BANNER}'){/if}">    <br />
    <div class="container">
        <center>
            <i class="variable123123123">
                <img src="{if isset($MZ_LOGO)}{$MZ_LOGO}{else}{$TEMPLATE.path}img/banner.png{/if}" {if ($LOGO_ANIMADO gte animated)}class="{$LOGO_ANIMADO}"{/if} style="width: 220px;">
            </i>
        </center>
    </div>
</div>
<div aria-hidden="true" class="navdrawer" id="sidenav" tabindex="-1">
  <div class="navdrawer-content">
    <div class="navdrawer-header">
      <a class="navbar-brand px-0" href="{$SITE_HOME}">{$SITE_NAME}</a>
    </div>
    <nav class="navdrawer-nav">
        {foreach from=$NAV_LINKS key=name item=item}
            {if isset($item.items)}
                <div class="dropdown">
                  <a class="btn btn-secondary dropdown-toggle" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    {$item.icon} {$item.title}
                  </a>
                  <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                    <a class="dropdown-header">{$item.title}</a>
                      <div class="dropdown-divider"></div>
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
	  <button type="button" class="close" data-dismiss="alert" aria-label="Close">
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
</div>