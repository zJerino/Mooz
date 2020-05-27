{include file='header.tpl'}
{include file='navbar.tpl'}

<div class="container">
    <div class="row  justify-content-center">
        <div class="col-10">
            <div class="card card-news">
                <div class="card-header">
                    <span class="card-title">
                        {$TITLE}
                    </span>
                </div>
                <div class="card-body">
                    {$CONTENT}
                </div>
            </div>
        </div>
    </div>
</div>

{include file='footer.tpl'}