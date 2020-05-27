{include file='header.tpl'}
{include file='navbar.tpl'}
<div class="container">
    
    <div class="row justify-content-center">
        <div class="col order-2">
            <div class="card card-news">
                <div class="card-header">
                    <h2 class="card-title">{$STORE}</h2>
                </div>
                <div class="card-body">
                    <div class="container">
                        {$CONTENT}
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