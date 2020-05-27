{include file='header.tpl'}
{include file='navbar.tpl'}
<div class="container">
    
    
    <div class="row justify-content-center">
        <div class="col order-2">
            <div class="card card-news">
                <div class="card-header">
                    <h2 class="card-title">{$STORE} <i class="fa fa-angle-right"></i> {$ACTIVE_CATEGORY} </h2>
                </div>
                <div class="card-body">
                    <div class="container">
                        {if isset($NO_PACKAGES)}
                            <div class="alert alert-info">
                                {$NO_PACKAGES}
                            </div>
                        {else}
                        {assign var=i value=0}
                            <div class="row">
                        {foreach from=$PACKAGES item=package name=packageArray}
                            <div class="card col-md-4 card-news text-center">
                                <div class="card-body">
                                    <div class="card-header"><span class="card-title">
                                        {$package.name}
                                    </span></div>

                                    {if $package.image}
                                        <img class="rounded lazy" style="max-height: 100%; max-width: 100%;" data-src="{$package.image}" data-srcset="{$package.image}" alt="{$package.name}">
                                    {else}
                                        <img class="rounded lazy" style="max-height: 100%; max-width: 100%;" data-src="{$TEMPLATE.path}img/empty.png" data-srcset="{$TEMPLATE.path}img/empty.png" alt="{$package.name}">
                                    {/if}
                                    <br>
                                    {if $package.sale_active}
                                    <i class="fa fa-dollar-sign text-success"></i>  <span style="color: #dc3545;text-decoration:line-through;">{$package.price}</span>
                                    {/if}
                                    <i class="fa fa-dollar-sign"></i> {$package.real_price}
                                    <br>
                                    <button role="button" class="btn btn-primary" data-toggle="modal" data-target="#modal{$package.id}">
                                        {$BUY} &raquo;
                                    </button>
                                </div>
                            </div>

                            <div class="modal fade" id="modal{$package.id}" tabindex="-1" role="dialog" aria-labelledby="modal{$package.id}Label" aria-hidden="true">
                                <div class="modal-dialog" role="document">
                                    <div class="modal-content" style="text-align: center;">
                                        <div class="modal-header">
                                            <h5 class="modal-title" id="modal{$package.id}Label">{$package.name}<span aria-hidden="true"> | {$CURRENCY}{$package.real_price}</span></h5>
                                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                <span aria-hidden="true">&times;</span>
                                            </button>
                                        </div>
                                        <div class="modal-body">
                                            {if $package.image}
                                                <img class="lazy rounded" style="max-width: 200px; max-height: 200px" data-src="{$package.image}" data-srcset="{$package.image}" alt="{$package.name}" />
                                                <hr />
                                            {/if}
                                            <div class="forum_post">
                                                {$package.description}
                                            </div>
                                        </div>
                                        <div class="modal-footer">
                                            <button type="button" class="btn btn-danger" data-dismiss="modal">{$CLOSE}</button>
                                            <a href="{$package.link}" target="_blank" rel="nofollow noopener" class="btn btn-success">{$BUY}</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            {assign var=i value=$i+1}
                        {/foreach}
                        </div>
                        {/if}
                    </div>
                </div>
            </div>
            <br />
        </div>
        <div class="col-md-4 col-lg-3 order-1">
            <div class="card card-news">
                <div class="card-body">
                    <ul class="nav flex-column nav-pills">
                        <li class="nav-item active">
                            <a class="nav-link" href="{$HOME_URL}">{$HOME}</a>
                        </li>
                        {foreach from=$CATEGORIES item=category}
                            {if count($category.subcategories)}
                              <li class="nav-item {if isset($item.active)}active{/if}">
                                <a class="nav-link d-flex" type="button" data-toggle="collapse" data-target="#VerCategoria-{$category.title}" aria-expanded="false" aria-controls="VerCategoria-{$category.title}">{$category.title} <i class="ml-auto d-table fa fa-angle-down"></i></a>
                              </li> 
                              <div class="collapse" id="VerCategoria-{$category.title}">
                                {foreach from=$category.subcategories item=subcategory}
                                    <li class="ml-1 nav-item">
                                        <a class="nav-link" href="{$subcategory.url}">{$subcategory.title}</a>
                                    </li>
                                {/foreach}
                              </div>
                            {else}
                                <li class="nav-item">
                                    <a class="nav-link" href="{$category.url}">{$category.title}</a>
                                </li>
                            {/if}
                        {/foreach}
                    </ul>
                </div>
            </div>
            {if count($WIDGETS)}
                {foreach from=$WIDGETS item=widget}
                    {$widget}
                {/foreach}
            {/if}
        </div>
    </div>
</div>


{include file='footer.tpl'}