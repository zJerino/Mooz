<div class="card card-news">
    <div class="card-body text-center">
        <div class="card-header">
            <span class="card-title">
                {$FEATURED_PACKAGE}
            </span>
        </div>
            {if $PACKAGE.image}
                <img class="lazy card-img-top" data-srcset="{$PACKAGE.image}" data-src="{$PACKAGE.image}" alt="{$PACKAGE.name}">
            {/if}
            {if $PACKAGE.image}
                <img class="lazy rounded" style="max-height: 150px; max-width: 150px;" data-src="{$PACKAGE.image}" data-srcset="{$PACKAGE.image}" alt="{$PACKAGE.name}">
            {else}
                <img class="lazy rounded" style="max-height: 150px; max-width: 150px;" data-srcset="{$TEMPLATE.path}img/empty.png" data-src="{$TEMPLATE.path}img/empty.png" alt="{$PACKAGE.name}">
            {/if}
            <h5 class="card-title">{$PACKAGE.name}</h5>
            <div class="ui divider"></div>
            {if $PACKAGE.sale_active}
                <span style="color: #dc3545;text-decoration:line-through;"><i class="fa fa-dollar-sign"></i> {$PACKAGE.price}</span>
            {/if}
            <i class="fa fa-dollar-sign"></i> {$PACKAGE.real_price}

            <div class="ui divider"></div>
            <a class="btn btn-primary" href="{$PACKAGE.link}">
                {$VIEW} &raquo;
            </a>
    </div>
</div>