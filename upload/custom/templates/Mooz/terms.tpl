{include file='header.tpl'}
{include file='navbar.tpl'}

<div class="container">
    <div class="row centro">
        <div class="col-10" id="contenido">
            <div class="card card-news">
                <div class="card-header">
                    <span class="card-title">
                        {$TERMS}
                    </span>
                </div>
                <div class="card-body">
                    {$SITE_TERMS}
                    <hr />
                    {$NAMELESS_TERMS}
                </div>
            </div>
        </div>
    </div>
</div>

{include file='footer.tpl'}