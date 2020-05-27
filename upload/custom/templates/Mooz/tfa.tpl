{include file='header.tpl'}
{include file='navbar.tpl'}

<div class="container">
    <div class="row centro">
        <div class="col-10"  id="contenido">
            {if isset($ERROR)}
              <div class="alert alert-danger">
                  {$ERROR}
                </div>
            {/if}
            <div class="card card-news">
                <div class="card-header">
                    <span class="card-title">
                        {$TWO_FACTOR_AUTH}
                    </span>
                </div>
                <div class="card-body">
                    <form action="" method="post" id="form-tfa">
                        <div class="form-group">
                            <label for="TFA">Email address</label>
                            <input type="text" class="form-control" id="TFA" aria-describedby="TFAHelp" name="tfa_code" placeholder="Enter you core">
                            <small id="TFAHelp" class="form-text text-muted">Escanea el codigo TFA en tu celular</small>
                        </div>
                        <input type="hidden" name="tfa" value="true">
                        <input type="hidden" name="token" value="{$TOKEN}">
                        <input type="submit" class="ui primary button" value="{$SUBMIT}">
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>

{include file='footer.tpl'}