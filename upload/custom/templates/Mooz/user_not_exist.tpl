{include file='header.tpl'}
{include file='navbar.tpl'}

<div class="container">
    <div class="row centro">
        <div class="col-10" id="contenido">
            <div class="card card-news">
                <div class="card-header">
                    <span class="card-title">
                        {$NOT_FOUND}
                    </span>
                </div>
                <div class="card-body">
                    <button class="btn btn-primary" onclick="javascript:history.go(-1)">{$BACK}</button>
                    <a class="btn btn-danger" href="{$SITE_HOME}">{$HOME}</a>
                </div>
            </div>
        </div>
    </div>
</div>

{include file='footer.tpl'}