{include file='header.tpl'}
{include file='navbar.tpl'}

<div class="container">
    <div class="card card-news">
        <div class="card-header">
            <span class="card-title">
                {$TITLE}
            </span>
        </div>
        <div class="card-body">
            <div class="container">
                {if isset($SUCCESS)}
                    <span class="alert alert-success">
                        <i class="fa fa-check-circle"></i> <b>{$SUCCESS_TITLE}</b> <span>{$SUCCESS}</span>
                    </span>
                {/if}
                {if isset($ERROR)}
                    <span class="alert alert-danger">
                        <i class="fa fa-times-circle"></i> <b>{$ERROR_TITLE}</b> <span>{$ERROR}</span>
                    </span>
                {/if}
                {if isset($ERROR_EMAIL)}
                    <span class="alert alert-danger">
                        <i class="fa fa-times-circle"></i> <b>{$ERROR_TITLE}</b> <span>{$ERROR_EMAIL}</span>
                    </span>
                {/if}
                {if isset($ERROR_CONTENT)}
                    <span class="alert alert-danger">
                        <i class="fa fa-times-circle"></i> <b>{$ERROR_TITLE}</b> <span>{$ERROR_CONTENT}</span>
                    </span>
                {/if}
                <div class="container" id="contact">
                    <form action="" method="post" id="form-contact">
                        <div class="form-group">
                            <label for="email">{$EMAIL}</label>
                            <input class="form-control" type="email" name="email" id="email" placeholder="{$EMAIL}" tabindex="1">
                        </div>
                        <div class="form-group">
                            <label for="inputMessage">{$MESSAGE}</label>
                            <textarea class="form-control" id="inputMessage" name="content" placeholder="{$MESSAGE}" tabindex="2"></textarea>
                        </div>
                        <input type="hidden" name="token" value="{$TOKEN}">
                        <input type="submit" class="btn btn-primary" value="{$SUBMIT}" tabindex="3">
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
{include file='footer.tpl'}