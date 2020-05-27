{include file='header.tpl'}
{include file='navbar.tpl'}

<div class="container"  id="contenido">
    <div class="row justify-content-md-center">
        <div class="col-12">
            <div class="portada-del-perfil">
                <div class="portada-del-perfil-img" style="background-image:url('{$BANNER}');">
                    <div class="portada-del-perfil-ubicador row">
                        <span class="col-2"><img class="lazy portada-del-perfil-avatar" data-src="{$AVATAR}" data-srcset="{$AVATAR}" src="{$AVATAR}"></span>
                        <span class="col">
                            <div  class="portada-del-perfil-nombre">
                                <strong {if $USERNAME_COLOUR != false} style="{$USERNAME_COLOUR}"{/if}>{$NICKNAME}</strong>
                                <br />
                                <span>{if $USER_TITLE|count_characters > 0 }{$USER_TITLE}{else}{$GROUP}{/if}</span>
                                </div>
                            </span>
                        </div>
                    </div>
                    <div class="portada-del-perfil-panel">
                        <div class="container">
                            {if isset($LOGGED_IN)}
                                    {if isset($SELF)}
                                        <a class="btn-profile normal" href="{$SETTINGS_LINK}" style="padding: 10px 5px 10px 10px">
                                            <i class="fa fa-user-cog"></i>
                                        </a>
                                        <a href="#" class="btn-profile normal" data-toggle="modal" data-target="#imageModal">
                                            <i class="fas fa-images fa-fw" data-toggle="tooltip" title="{$CHANGE_BANNER}"></i>
                                        </a>
                                    {else}
                                        {if isset($FRIENDS)}
                                            <form action="" method="post" id="form-profileFriend">
                                                <input type="hidden" name="token" value="{$TOKEN}">
                                                <input type="hidden" name="action" value="{$FRIEND.action}">
                                            </form>
                                            <a class="btn-profile normal" onclick="$('#form-profileFriend').submit();">
                                                <i data-toggle="tooltip" title="{$FRIEND.text}">{$FRIEND.icon}</i>
                                            </a>
                                        {/if}
                                        {if ($MOD_OR_ADMIN != true)}
                                            <a class="btn-profile normal" data-toggle="modal" data-target="#modal-block">
                                                <i class="fa fa-ban"></i>
                                            </a>
                                        {/if}
                                        <a class="btn-profile normal" href="{$MESSAGE_LINK}" ><i class="fa fa-envelope"></i></a>
                                        {if isset($RESET_PROFILE_BANNER)}
                                            <a href="{$RESET_PROFILE_BANNER_LINK}" class="btn-profile normal" data-toggle="tooltip" data-content="{$RESET_PROFILE_BANNER}">
                                            <i class="fa fa-image"></i>
                                          </a>
                                        {/if}
                                      {/if}
                                    {/if}
                        </div>
                    </div>
                </div>
            <br />
            <br />
            <br />
        </div>
        <div class="col{if (!count($WIDGETS) &&  !$FRIENDS)}-10{/if}">
            <br />
            {if isset($LOGGED_IN)}
                {if isset($ERROR)}
                <div class="alert alert-danger">
                  {$ERROR}
                </div>
                {/if}
                {if isset($SUCCESS)}
                <div class="alert alert-success">
                  {$SUCCESS}
                </div>
                {/if}
            <form action="" method="post">
                <div class="card card-news">
                    <div class="card-body">
                        <div class="form-group">
                            <input type="text" class="form-control" id="COMENTARIOS" name="post" placeholder="{$POST_ON_WALL}"/>
                        </div>
                        <input type="hidden" name="action" value="new_post">
                        <input type="hidden" name="token" value="{$TOKEN}">
                        <input type="submit" class="btn btn-primary" value="{$SUBMIT}">
                    </div>
                </div>
            </form>
		  {/if}

		  {if count($WALL_POSTS)}
			{foreach from=$WALL_POSTS item=post}

			<div class="card card-news">
			  <div class="card-header">
                    <div class="row align-items-center">
                        <div class="col">
                            <img class="lazy rounded-circle" style="max-height:30px; max-width:30px;" data-src="{$post.avatar}" data-srcset="{$post.avatar}" />
                            <a data-poload="{$USER_INFO_URL}{$post.user_id}" data-html="true" data-placement="top" href="{$post.profile}" style="{$post.user_style}">
                                <span class="ml-1">{$post.nickname}</span>
                            </a>
                        </div>
                        <div class="col">
                            {if (isset($CAN_MODERATE) && $CAN_MODERATE eq 1) || $post.self eq 1}
                                <form action="" method="post" id="delete{$post.id}">
                                    <input type="hidden" name="post_id" value="{$post.id}">
                                    <input type="hidden" name="action" value="delete">
                                    <input type="hidden" name="token" value="{$TOKEN}">
                                </form>
                              <div class="ml-auto d-table" id="button-{$name}" data-variation="mini" data-toggle="popup"><i class="fa fa-ellipsis-h"></i></div>
                                <div class="ui popup">
                                    <a class="item-dropdown">Menu</a>
                                    <div id="awaslokas">
                                        <a class="dropdown-item" data-toggle="modal" data-target="#editModal{$post.id}" href="#">{$EDIT}</a>
                                        <a class="dropdown-item" onclick="deletePost({$post.id})" href="#">{$DELETE}</a>
                                    </div>
                                </div>
                            {/if}
                        </div>
                    </div>
			  </div>

			  <div class="card-body">
				<div class="forum_post" id="publicacionxddd">
				  {$post.content}
				</div>
			  </div>

			  <div class="card-footer">
                <div class="row align-items-center">
                    <a {if $post.reactions_link ne ""}href="{$post.reactions_link}"{else}{/if} class="col" {if count($post.reactions.reactions)} data-toggle="tooltip" title="{foreach from=$post.reactions.reactions item=reaction name=name}{$reaction.nickname}{if (!$smarty.foreach.name.last)}, {/if}{/foreach}"{/if}>
                        <i class="fas fa-thumbs-up"></i> {$post.reactions.count} 
                    </a>
                    <a aria-controls="comentarios-de-{$post.id}" class="col" aria-expanded="false" data-toggle="collapse" href="#comentarios-de-{$post.id}" id="headingOne">
                        <i class="fas fa-comments"></i> {$post.replies.count}
                    </a>
                </div>
                  
                <div class="list-group" style="text-align: start" id="accordionOne">
                    <div class="expansion-panel">
                        <div aria-labelledby="headingOne" class="collapse" data-parent="#accordionOne" id="comentarios-de-{$post.id}">
                            <div class="expansion-panel-body">
                                {if isset($post.replies.replies)}
                                    {foreach from=$post.replies.replies name=replies item=reply}
                                        <br />
                                        <div class="chip" data-toggle="collapse" href="#comentario-{$reply.id}">
                                            <a href="{$reply.profile}" style="{$reply.style}">
                                                <img class="lazy chip-img" data-src="{$reply.avatar}" data-srcset="{$reply.avatar}">{$reply.nickname}
                                            </a>: {$reply.content}
                                            <div class="collapse" id="comentario-{$reply.id}">
                                                {if ($CAN_MODERATE == 1 || $post.self == 1)}
												    <form action="" method="post" id="from-profilePostReplyDelete-{$reply.id}">
														<a href="#" style="transform: translate(20px, -6px);position: absolute;" data-toogle="tooltip" title="{$DELETE}" onclick="if(confirm(confirmDelete))$(this).closest('form').submit();"><i class="fa fa-trash"></i></a>
												        <input type="hidden" name="token" value="{$TOKEN}">
												        <input type="hidden" name="post_id" value="{$reply.id}">
													   <input type="hidden" name="action" value="deleteReply">
                                                    </form>
												{/if}
                                            </div>
                                        </div>
                                        <br />
                                    {/foreach}
                                {else}
                                    <p class="centro">{$NO_REPLIES}</p>
                                {/if}
                                <hr />
                                {if isset($LOGGED_IN)}
                                    <form action="" method="post">
                                        <input type="text" class="form-control" id="COMENTARIOS" name="reply" placeholder="{$NEW_REPLY}"/>
                                        <input type="hidden" name="token" value="{$TOKEN}">
                                        <input type="hidden" name="post" value="{$post.id}">
                                        <input type="hidden" name="action" value="reply">
                                        <br />
                                        <input type="submit" value="{$SUBMIT}" class="btn btn-primary">
                                    </form>
                                {/if}
                            </div>
                        </div>
                    </div>
                </div>
			  </div>
			</div>

			{if (isset($CAN_MODERATE) && $CAN_MODERATE eq 1) || $post.self eq 1}
				<!-- Post editing modal -->
				<div class="modal fade" id="editModal{$post.id}" tabindex="-1" role="dialog" aria-labelledby="editModal{$post.id}Label" aria-hidden="true">
					<div class="modal-dialog" role="document">
						<div class="modal-content">
							<div class="modal-header">
								<button type="button" class="close" data-dismiss="modal" aria-label="Close">
									<span aria-hidden="true">&times;</span>
								</button>
							</div>
							<div class="modal-body">
								<form action="" method="post">
								  <div class="form-group">
									<textarea class="form-control" name="content">{$post.content}</textarea>
								  </div>
								  <div class="form-group">
									<input type="hidden" name="token" value="{$TOKEN}">
									<input type="hidden" name="post_id" value="{$post.id}">
									<input type="hidden" name="action" value="edit">
									<input type="submit" class="btn btn-primary" value="{$SUBMIT}">
								  </div>
								</form>
							</div>
						</div>
					</div>
				</div>
			{/if}
			
			<!-- Replies modal -->
			<div class="modal fade" id="replyModal{$post.id}" tabindex="-1" role="dialog" aria-labelledby="replyModal{$post.id}Label" aria-hidden="true">
			  <div class="modal-dialog" role="document">
				<div class="modal-content">
				  <div class="modal-header">
				    <h5 class="modal-title" id="replyModal{$post.id}Label">{$REPLIES_TITLE}</h5>
					<button type="button" class="close" data-dismiss="modal" aria-label="Close">
					  <span aria-hidden="true">&times;</span>
					</button>
				  </div>
				  <div class="modal-body">
				    {if isset($post.replies.replies)}
					  {foreach from=$post.replies.replies name=replies item=reply}
					  <img data-src="{$reply.avatar}" data-srcset="{$reply.avatar}" alt="{$reply.username}" style="max-height:20px; max-width:20px;" class="lazy rounded" /> <a href="{$reply.profile}" style="{$reply.style}">{$reply.nickname}</a> &raquo;
					  <span class="float-md-right">
					    <span rel="tooltip" title="{$reply.time_full}">{$reply.time_friendly}</span>
					  </span>
					  <div style="height:15px;"></div>
					  <div class="forum_post">
					    {$reply.content}
					  </div>
                      {if (isset($CAN_MODERATE) && $CAN_MODERATE eq 1) || $reply.self eq 1}
						<form action="" method="post" id="deleteReply{$reply.id}">
						  <input type="hidden" name="action" value="deleteReply">
						  <input type="hidden" name="token" value="{$TOKEN}">
						  <input type="hidden" name="post_id" value="{$reply.id}">
						</form>
						<br /><a href="#" onclick="deleteReply({$reply.id})">{$DELETE}</a>
					  {/if}
					  {if !$smarty.foreach.replies.last}<hr />{/if}
					  {/foreach}
					{else}
					  <p>{$NO_REPLIES}</p>
					{/if}
					
					{if isset($LOGGED_IN)}
					<hr />
					<form action="" method="post">
					  <textarea class="form-control" name="reply" placeholder="{$NEW_REPLY}"></textarea>
					  <input type="hidden" name="token" value="{$TOKEN}">
					  <input type="hidden" name="post" value="{$post.id}">
					  <input type="hidden" name="action" value="reply">
					{/if}
				  </div>
				  <div class="modal-footer">
				    {if isset($LOGGED_IN)}
					<input type="submit" value="{$SUBMIT}" class="btn btn-primary">
					</form>
				    {/if}
					<button type="button" class="btn btn-secondary" data-dismiss="modal">{$CLOSE}</button>
				  </div>
				</div>
			  </div>
			</div>

			<br />

			{/foreach}

			<div class="centro">{$PAGINATION}</div>
		  {else}
			<div class="alert alert-info">{$NO_WALL_POSTS}</div>
			<br /><br />
		  {/if}
        </div>
        {if isset($FRIENDS) || count($WIDGETS)}
        <div class="col-md-4 col-lg-3">
            {if isset($FRIENDS)}
                <div class="card card-news" id="widget-friends">
                    <div class="card-body" style="padding-top: 1px;">
                        <div class="card-header">
                            <span class="card-title">{$FRIENDS}</span>
                        </div>
                        <div class="container">
                            {if count($FRIENDS_LIST)}
                                {foreach from=$FRIENDS_LIST item=$item}
                                    <a class="ms-avatar" data-toggle="tooltip" data-placement="top" title="{$item.nickname}" href="{$item.profile}">
                                        <img class="lazy" style="width: 30px;max-width: 30px;min-width: 30px;" data-src="{$item.avatar}" data-srcset="{$item.avatar}"/>
                                    </a>
                                {/foreach}
                            
                            {else}
                                <p>{$NO_FRIENDS}</p>
                            {/if}
                        </div>
                    </div>
                </div>
            {/if}
            <br />
            {if count($WIDGETS)}
                {foreach from=$WIDGETS item=widget}
                    {$widget}
                {/foreach}
            {/if}
        </div>
        {/if}
    </div>
</div>

{if isset($LOGGED_IN_USER)}
	{if !isset($SELF)}
		{if ($MOD_OR_ADMIN !== true)}
			<div class="modal fade" id="modal-profileBlock">
				<div class="modal-dialog">
					<div class="modal-content">
						<div class="modal-header">
							<div class="modal-title">{(isset($BLOCK_USER)) ? $BLOCK_USER : $UNBLOCK_USER}</div>
							<a href="#" class="close" data-dismiss="modal">
								<i class="fas fa-times"></i>
							</a>
						</div>
						<div class="modal-body">
							{(isset($CONFIRM_BLOCK_USER)) ? $CONFIRM_BLOCK_USER : $CONFIRM_UNBLOCK_USER}
						</div>
						<div class="modal-footer">
							<form action="" method="post" id="form-profileBlock">
								<input type="button" class="btn btn-default btn-sm" data-dismiss="modal" value="{$CANCEL}">
								<input type="submit" class="btn btn-primary btn-sm" value="{$SUBMIT}">
								<input type="hidden" name="action" value="block">
								<input type="hidden" name="token" value="{$TOKEN}">
							</form>
						</div>
					</div>
				</div>
			</div>
		{/if}
	{else}
<!-- Modal -->
    <div class="modal fade" id="imageModal" tabindex="-1" role="dialog">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title">
                        {$UPLOAD_PROFILE_BANNER}
                    </h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    {if isset($PROFILE_BANNER)}
                    
                    
            <div class="portada-del-perfil">
                <div class="portada-del-perfil-img" style="background-image:url('{$BANNER}');">
                    <div class="portada-del-perfil-ubicador row">
                        <span class="col-2"><img data-src="{$AVATAR}" data-srcset="{$AVATAR}" class="lazy portada-del-perfil-avatar" style="width: 86px;
    position: absolute;transform: translate3d(-25px, 32px, 106px);"></span>
                        <span class="col">
                            <div  class="portada-del-perfil-nombre">
                                <strong {if $USERNAME_COLOUR != false} style="{$USERNAME_COLOUR}" {/if}>{$NICKNAME}</strong>
                                <br />
                                <span>{$USER_TITLE}</span>
                                </div>
                            </span>
                        </div>
                    </div>
                    <div class="portada-del-perfil-panel">
                        <div class="container">
                            
                        </div>
                    </div>
                </div>
                    <br />
                    <br />
                    <br />
                    
                    
				        <form action="{$UPLOAD_BANNER_URL}" method="post" enctype="multipart/form-data" id="form-profileBannerUpload">
				            <div class="form-group">
                                <div class="custom-file">
                                    <input type="file" name="file" class="custom-file-input" id="uploadBannerInput" onchange="$('#uploadBannerLabel').html(this.files[0].name);">
                                    <label for="uploadBannerInput" class="custom-file-label" id="uploadBannerLabel">{$BROWSE}</label>
                                </div>
                                <br />
                                <br />
                                <div class="input-group-append">
                                    <input type="submit" class="btn btn-success" value="{$UPLOAD}">
                                    <input type="hidden" name="type" value="profile_banner">
                                    <input type="hidden" name="token" value="{$TOKEN}">
                                </div>
					       </div>
						</form>
                    {/if}
                </div>
            </div>
        </div>
    </div>
	{/if}
{/if}
{include file='footer.tpl'}
