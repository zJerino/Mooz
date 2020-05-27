{include file='header.tpl'}
{include file='navbar.tpl'}
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8" id="contenido">
            <h3>
                {$CREATE_AN_ACCOUNT}
            </h3>
            {if count($REGISTRATION_ERROR)}
                <div class="alert alert-danger">
                    <div class="container">
                        {foreach from=$REGISTRATION_ERROR item=error}
                            <li style="list-style: none">
                                <i class="material-icons">cancel</i> {$error}
                            </li>
                        {/foreach}
                    </div>
                </div>
            {/if}
            <div class="card card-news" id="register">
                <div class="card-body">
                    <div class="container">
                        <form action="" method="post" id="form-register">
                            <div class="form-group row">
                                {if isset($NICKNAMES)}
                                    <div class="container">
                                        <div class="row">
                                            <label for="{if isset($MINECRAFT)}nickname{else}username{/if}" class="col-sm-3 col-form-label">{$NICKNAME}</label>
                                            <div class="col-sm-9">
                                                <input class="form-control" type="text" name="{if isset($MINECRAFT)}nickname{else}username{/if}" id="username" placeholder="{$NICKNAME}" tabindex="1">
                                            </div>
                                        </div>
                                    </div>
                                    {if isset($MINECRAFT)}
                                    <div class="container">
                                        <div class="row">
                                            <label for="mcname" class="col-sm-3 col-form-label">{$MINECRAFT_USERNAME}</label>
                                            <div class="col-sm-9">
                                                <input class="form-control" type="text" name="username" id="mcname" placeholder="{$MINECRAFT_USERNAME}" tabindex="2">
                                            </div>
                                        </div>
                                    </div>
                                    {/if}
                                {else}
                                    {if isset($MINECRAFT)}
                                    <div class="container">
                                        <div class="row">
                                            <label for="mcname" class="col-sm-3 col-form-label">{$MINECRAFT_USERNAME}</label>
                                            <div class="col-sm-9">
                                                <input class="form-control" type="text" name="username" id="mcname" placeholder="{$MINECRAFT_USERNAME}" tabindex="1">
                                            </div>
                                        </div>
                                    </div>
                                    {else}
                                <div class="container">
                                    <div class="row">
                                        <label for="mcname" class="col-sm-3 col-form-label">{$MINECRAFT_USERNAME}</label>
                                        <div class="col-sm-9">
                                            <input class="form-control" type="text" name="username" id="mcname" placeholder="{$NICKNAME}" tabindex="1" >
                                        </div>
                                    </div>
                                </div>
                                    {/if}
                                {/if}
                                
                                {*EMAIL INPUT*}
                                
                                <div class="container">
                                    <div class="row">
                                        <label for="email" class="col-sm-3 col-form-label">{$EMAIL}</label>
                                        <div class="col-sm-9">
                                            <input type="email" name="email" class="form-control" id="email" placeholder="{$EMAIL}" tabindex="3">
                                        </div>
                                    </div>
                                </div>
                                
                                {*PASSWORD*}
                                    
                                <div class="container">
                                    <div class="row">
                                        <label for="password" class="col-sm-3 col-form-label">{$PASSWORD}</label>
                                        <div class="col-sm-9">
                                            <input type="password" name="password" class="form-control" id="password" placeholder="{$PASSWORD}" tabindex="4">
                                        </div>
                                    </div>
                                </div>
                                    {*PASSWORD AGAIN*}
                                <div class="container">
                                    <div class="row">
                                        <label for="password_again" class="col-sm-3 col-form-label">{$CONFIRM_PASSWORD}</label>
                                        <div class="col-sm-9">
                                            <input type="password" name="password_again" class="form-control" id="password_again" placeholder="{$CONFIRM_PASSWORD}" tabindex="5">
                                        </div>
                                    </div>
                                </div>
                                
                                {if isset($RECAPTCHA)}
                                        <div class="col-form-label" data-sitekey="{$RECAPTCHA}" tabindex="6"></div>
                                {/if}
                                
                                <div class="form-actions">
                                    <br/ >
                                        <div class="container">
                                            <label for="t_and_c">
                                            <input type="checkbox" name="t_and_c" id="t_and_c" value="1" tabindex="7">
                                            <span>{$AGREE_TO_TERMS}</span>
                                        </label>
                                        <br/>
                                    <input type="hidden" name="token" value="{$TOKEN}">
                                    <input type="submit" class="btn btn-primary" value="{$REGISTER}" tabindex="8">
                                    </div>
                            </div>
                          </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
{*
*}
{include file='footer.tpl'}