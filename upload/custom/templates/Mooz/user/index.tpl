{include file='header.tpl'}
{include file='navbar.tpl'}
<div class="container">
    <div class="row">
      <div class="col-lg-3">
        <div class="nav flex-column nav-pills" id="v-pills-tab" role="tablist" aria-orientation="vertical">
            {include file='user/navigation.tpl'}
        </div>
      </div>
      <div class="col">
          <div class="card card-news">
              <div class="card-header">
                  <span class="card-title">
                      {$OVERVIEW}
                  </span>
              </div>
              <div class="card-body">
                  <div class="container">
                      {nocache}
                        {foreach from=$USER_DETAILS_VALUES key=name item=value}
                            <li style="list-style: none">
                                <i class="fa fa-chevron-right"></i>
                                <b>{$name}</b>
                                <small>{$value}</small>
                            </li>
                        {/foreach}
                      {/nocache}
                      {if isset($FORUM_GRAPH)}
                        <div id="chartWrapper">
                            <br />
                            <h5><b>{$FORUM_GRAPH}</b></h5>
                            <canvas id="dataChart" width="100%" height="40"></canvas>
                        </div>
                      {/if}
                  </div>
              </div>
          </div>
      </div>
</div>

{*

<div class="ui stackable grid" id="user">
  <div class="ui centered row">
    <div class="ui six wide tablet four wide computer column">
	  {include file='user/navigation.tpl'}
    </div>
    <div class="ui ten wide tablet twelve wide computer column">
      <div class="ui segment">
        <h3 class="ui header">{$OVERVIEW}</h3>
        <div class="ui relaxed list">
          {nocache}
            {foreach from=$USER_DETAILS_VALUES key=name item=value}
              <div class="item">
                <i class="angle right icon"></i>
                <div class="middle aligned content">
                  <span class="header">{$name}</span>
                  <div class="description">{$value}</div>
                </div>
              </div>
            {/foreach}
          {/nocache}
        </div>
      </div>
      {if isset($FORUM_GRAPH)}
	    <div class="ui segment">
		  <h3 class="ui header">{$FORUM_GRAPH}</h3>
	      <div id="chartWrapper">
		    <canvas id="dataChart" width="100%" height="40"></canvas>
		  </div>
		</div>
	  {/if}
    </div>
  </div>
</div>
*}
{include file='footer.tpl'}