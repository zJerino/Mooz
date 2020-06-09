{include file='header.tpl'}
{include file='navbar.tpl'}
<div class="container">
    <div class="row">
        <div class="col-lg-3">
            {include file='user/navigation.tpl'}
        </div>
        <div class="col">
              <div class="card card-news">
                  <div class="card-header">
                      <span class="card-title">
                          {$SETTINGS}
                      </span>
                  </div>
                  <div class="card-body">
                      <div class="container">
                          {if $ERROR}
                        <div class="alert alert-danger">
                            {$ERROR}
                        </div>
                    {/if}

                    {if $SUCCESS}
                        <div class="alert alert-success">
                            {$SUCCESS}
                        </div>
                    {/if}
                        <form action="" method="post" id="form-user-settings">
                          {nocache}
                            {foreach from=$PROFILE_FIELDS item=field}
                                {if !isset($field.disabled)}
                                <div class="form-group">
                                    <label for="input{$field.id}">{$field.name}</label>
                                    {if $field.type == "text"}
                                        <input type="text" class="form-control" name="{$field.id}" id="input{$field.id}" value="{$field.value}" placeholder="{$field.name}">
                                    {else if $field.type == "textarea"}
                                        <textarea class="form-control" name="{$field.id}" id="input{$field.id}">{$field.value}</textarea>
                                    {else if $field.type == "date"}
                                        <input class="form-control" type="text" name="{$field.id}" id="input{$field.id}" value="{$field.value}">
                                    {/if}
                                </div>
                                {/if}
                            {/foreach}
                            {if isset($PRIVATE_PROFILE)}
                                <div class="form-group">
                                    <label for="inputPrivateProfile">{$PRIVATE_PROFILE}</label>
                                    <select class="form-control" name="privateProfile" id="inputPrivateProfile">
                                        <option value="1"{if ($PRIVATE_PROFILE_ENABLED == true)} selected {/if}>{$ENABLED}</option>
                                        <option value="0"{if ($PRIVATE_PROFILE_ENABLED == false)} selected {/if}>{$DISABLED}</option>
                                    </select>
                                </div>
                            {/if}
                                <div class="form-group">
                                    <label for="inputLanguage">{$ACTIVE_LANGUAGE}</label>
                                    <select class="form-control" name="language" id="inputLanguage">
                                        {foreach from=$LANGUAGES item=language}
                                            <option value="{$language.name}"{if $language.active == true} selected{/if}>{$language.name}</option>
                                        {/foreach}
                                    </select>
                                </div>
                                <div class="form-group">
                                    <label for="inputTemplate">{$ACTIVE_TEMPLATE}</label>
                                    <select name="template" id="inputTemplate" class="form-control">
                                        {foreach from=$TEMPLATES item=template}
                                            <option value="{$template.id}"{if $template.active == true} selected{/if}>{$template.name}</option>
                                        {/foreach}
                                    </select>
                                </div>
                                <div class="form-group">
                                    <label for="inputTimezone">{$TIMEZONE}</label>
                                    <select class="form-control" name="Timezone" id="inputTimezone">
                                        {foreach from=$TIMEZONES key=KEY item=ITEM}
                                            <option value="{$KEY}"{if $SELECTED_TIMEZONE eq $KEY} selected{/if}>
                                                ({$ITEM.offset}) {$ITEM.name} &middot; ({$ITEM.time})
                                            </option>
                                        {/foreach}
                                    </select>
                                </div>
                                {if isset($SIGNATURE)}
                                    <div class="form-group">
                                        {if !isset($MARKDOWN)}
                                            <label for="inputSignature">{$SIGNATURE}</label>
                                            <textarea name="signature" id="inputSignature">{$SIGNATURE_VALUE}</textarea>
                                        {else}
                                            <label for="respuestasxd">{$SIGNATURE}</label>
                                            <textarea name="signature" id="respuestasxd">{$SIGNATURE_VALUE}</textarea>
                                        {/if}
                                    </div>
                                {/if}
                          {/nocache}
                          <input type="hidden" name="action" value="settings">
                          <input type="hidden" name="token" value="{$TOKEN}">
                          <input type="submit" class="btn btn-primary" value="{$SUBMIT}">
                        </form>
                          
                        <br />
                        <br />
                          
                          <div class="list-group" id="accordionOne">
                              <div class="expansion-panel list-group-item" style="box-shadow: none;border-radius: 6px !important;">
                              <a aria-controls="collapseOne" aria-expanded="false" class="expansion-panel-toggler collapsed" data-toggle="collapse" href="#collapseOne" id="headingOne">
                                Security
                                <div class="expansion-panel-icon ml-3 text-black-secondary">
                                    <i class="collapsed-show fa fa-lock"></i>
                                    <i class="collapsed-show material-icons">keyboard_arrow_down</i>
                                    <i class="collapsed-hide fa fa-lock-open"></i>
                                    <i class="collapsed-hide material-icons">keyboard_arrow_up</i>
                                </div>
                              </a>
                                  <div aria-labelledby="headingOne" class="collapse" data-parent="#accordionOne" id="collapseOne">
                                    <div class="expansion-panel-body">
                                        {nocache}
                        <h4>{$CHANGE_EMAIL_ADDRESS}</h4>
                        <form action="" method="post">
                            <div class="form-group">
                                <label for="inputPassword">{$CURRENT_PASSWORD}</label>
                                <input type="password" name="password" id="inputPassword" class="form-control">
                            </div>
                            <div class="form-group">
                                <label for="inputEmail">{$EMAIL_ADDRESS}</label>
                                <input type="email" name="email" id="inputEmail" class="form-control" value="{$CURRENT_EMAIL}">
                            </div>
                            <div class="form-group">
                                <input type="hidden" name="action" value="email">
                                <input type="hidden" name="token" value="{$TOKEN}">
                                <input type="submit" value="{$SUBMIT}" class="btn btn-primary">
                            </div>
                        </form>

                        <hr />

                        <h4>{$CHANGE_PASSWORD}</h4>
                        <form action="" method="post">
                            <div class="form-group">
                                <label for="inputOldPassword">{$CURRENT_PASSWORD}</label>
                                <input type="password" name="old_password" id="inputOldPassword" class="form-control">
                            </div>

                            <div class="form-group">
                                <label for="inputNewPassword">{$NEW_PASSWORD}</label>
                                <input type="password" name="new_password" id="inputNewPassword" class="form-control">
                            </div>

                            <div class="form-group">
                                <label for="inputNewPasswordAgain">{$CONFIRM_NEW_PASSWORD}</label>
                                <input type="password" name="new_password_again" id="inputNewPasswordAgain"
                                       class="form-control">
                            </div>

                            <div class="form-group">
                                <input type="hidden" name="action" value="password">
                                <input type="hidden" name="token" value="{$TOKEN}">
                                <input type="submit" value="{$SUBMIT}" class="btn btn-primary">
                            </div>
                        </form>
                    {/nocache}

                    <hr/>

                    <h4>{$TWO_FACTOR_AUTH}</h4>
                    {nocache}
                        {if isset($ENABLE)}
                            <a href="{$ENABLE_LINK}" class="btn btn-success">{$ENABLE}</a>
                        {else}
                            <a href="{$DISABLE_LINK}" class="btn btn-danger">{$DISABLE}</a>
                        {/if}
                    {/nocache}

                                      </div>
                                    </div>
                                  </div>
                                  </div>
                              <BR/>
                              <BR/>
                              <BR/>
                          {if isset($CUSTOM_AVATARS)}
                            <h4>{$UPLOAD_NEW_PROFILE_IMAGE}</h4>
                            <form action="{$CUSTOM_AVATARS_SCRIPT}" method="post" enctype="multipart/form-data">
                                <div class="form-group">
                                    <div class="custom-file">
                                        <input type="file" name="file" class="custom-file-input" id="SubirAvatar" onchange="$('#SubirAvatarTitle').html(this.files[0].name)">
                                        <label class="custom-file-label" for="SubirAvatar" id="SubirAvatarTitle">{$BROWSE}</label>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <input type="hidden" name="token" value="{$TOKEN}">
                                    <input type="hidden" name="type" value="avatar">
                                    <input type="submit" value="{$SUBMIT}" class="btn btn-primary">
                                </div>
                            </form>
                        {/if}
                        </div>
                      </div>
                  </div>
              </div>
        </div>
    </div>
{include file='footer.tpl'}