{include file='header.tpl'}
{include file='navbar.tpl'}
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <h3>
                {$SIGN_IN}
            </h3>
            {if count($ERROR)}
                <div class="alert alert-danger">
                    <div class="container">
                        {foreach from=$ERROR item=error}
                            <li style="list-style: none">
                                <i class="material-icons">cancel</i> {$error}
                            </li>
                        {/foreach}
                    </div>
                </div>
            {/if}
            <div class="card card-news">
                <div class="card-body">
                    <div class="container">
                        <form action="" method="post" id="form-login">
                            {if isset($EMAIL)}
                                <div class="input-group mb-3">
                                    <div class="input-group-prepend">
                                        <label for="email" class="input-group-text col-form-label">{$EMAIL}</label>
                                    </div>
                                    <input type="email" name="email" id="email" class="form-control" placeholder="{$USERNAME_INPUT}" value="{$USERNAME_INPUT}">
                                </div>
                            {else}
                                <div class="input-group mb-3">
                                    <div class="input-group-prepend">
                                        <label for="username" class="input-group-text col-form-label">{$USERNAME}</label>
                                    </div>
                                    <input type="username" name="username" id="username" class="form-control" placeholder="{$USERNAME_INPUT}" value="{$USERNAME_INPUT}">
                                </div>
                            {/if}
                            <div class="input-group mb-3">
                                <div class="input-group-prepend">
                                    <label for="username" class="input-group-text col-form-label">{$PASSWORD}</label>
                                </div>
                                <input type="password" name="password" id="password" class="form-control">
                                <div class="input-group-append">
                                    <span class="input-group-text" onclick="mostrarclave()"><i class="fa fa-eye"></i></span>
                                </div>
                            </div>
                            
                            {if isset($RECAPTCHA)}
                                <div class="mb-3">
                                    <div class="g-recaptcha" data-sitekey="{$RECAPTCHA}" tabindex="4"></div>
                                </div>
                            {/if}
                          <div class="form-group">
                            <div class="form-check">
                              <input class="form-check-input" type="checkbox" id="gridCheck">
                              <label class="form-check-label" for="gridCheck" name="remember" id="remember" value="1">
                                  <span>{$REMEMBER_ME}</span>
                              </label>
                            </div>
                          </div>
                            <input type="submit" class="btn btn-primary" value="{$SIGN_IN}"> <a href="{$FORGOT_PASSWORD_URL}" style="color: inherit" class="meta">
                            <span>{$FORGOT_PASSWORD}</span></a>
                            
                            <input type="hidden" name="token" value="{$FORM_TOKEN}">
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
{include file='footer.tpl'}