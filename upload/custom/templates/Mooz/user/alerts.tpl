{include file='header.tpl'}
{include file='navbar.tpl'}

<div class="container">
    <div class="row">
        <div class="col-lg-3">
            {include file='user/navigation.tpl'}
        </div>
        <div class="col">
              <div class="card card-news">
                  <div class="card-header">
                      <span class="card-title">
                          {$ALERTS}
                          
                          <span class="float-right badge badge-danger">
                              <a data-toggle="tooltip" title="{$DELETE_ALL}" class="normal" href="{$DELETE_ALL_LINK}"><i class="fa fa-trash-alt"></i></a>
                          </span>
                      </span>
                  </div>
                  <div class="card-body">
                      <div class="container">
                          {nocache}
                            {if count($ALERTS_LIST)}
                                {foreach from=$ALERTS_LIST key=name item=alert}
                                    <ul class="list-group list-group-flush">
                                        <li class="list-group-item">
                                            <a class="normal" href="{$alert->view_link}">
                                                {if $alert->read eq 0}
                                                    <strong>{$alert->content}</strong>
                                                {else}
                                                    <b>{$alert->content}</b>
                                                {/if}
                                                <br />
                                                <a data-toggle="tooltip" title="{$alert->date}"><i class="fa fa-clock"></i> {$alert->date_nice}</a>
                                            </a>
                                        </li>
                                    </ul>
                                {/foreach}
                            {else}
                                <div class="alert alert-info">
                                    <div class="container">
                                        <i class="fa fa-bell-slash"></i> {$NO_ALERTS}
                                    </div>
                                </div>
                            {/if}
                          {/nocache}
                      </div>
                  </div>
              </div>
        </div>
    </div>
</div>
{include file='footer.tpl'}