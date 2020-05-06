{include file='header.tpl'}
{include file='navbar.tpl'}

<div class="row justify-content-center">
    <div class="col-md-6">
        
        {if isset($SUCCESS)}
            <div class="alert alert-info">
                {$SUCCESS}
            </div>
        {/if}
        
        {if isset($ERROR)}
            <div class="alert alert-danger">
                {$ERROR}
            </div>
        {/if}
        <div class="card card-news">
            <div class="card-header">
                <h4>
                    {$FORGOT_PASSWORD}
                </h4>
            </div>
            <div class="card-body">
                <div class="container">
                    <small>
                        {$FORGOT_PASSWORD_INSTRUCTIONS}
                    </small>
                    <form action="" method="post" id="form-forgotPassword">
                        <div class="form-group">
                            <label for="inputEmail">{$EMAIL_ADDRESS}</label>
                            <input type="email" name="email" class="form-control" id="inputEmail">
                        </div>
                        <div class="form-actions">
                            <input type="submit" class="btn btn-md btn-primary" value="{$SUBMIT}">
                            <input type="hidden" name="token" value="{$TOKEN}">
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>

{include file='footer.tpl'}