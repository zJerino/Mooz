<div class="card card-news" id="widget-foro">
    <div class="card-body" style="padding-top: 1px;">
        <div class="card-header">
            <span class="card-title">{$LATEST_POSTS}</span>
        </div>
        <ul class="list-unstyled">
            {foreach from=$LATEST_POSTS_ARRAY name=latest_posts item=post}
                <li class="media">
                    <img class="lazy mr-3 rounded-circle" data-srcset="{$post.last_reply_avatar}" data-src="{$post.last_reply_avatar}" alt="{$post.last_reply_username}" style="width: 25px">
                    <div class="media-body">
                        <span class="mt-0 mb-1">
                            <a href="{$post.last_reply_link}">{$post.topic_title}</a>
                            <p>
                                <a href="{$post.last_reply_profile_link}" style="{$post.last_reply_style}">{$post.last_reply_username}</a> &bull; <span data-toggle="tooltip" title="{$post.last_reply}">{$post.last_reply_rough}</span>
                            </p>
                        </span>
                    </div>
                </li>
            {/foreach}
        </ul>
    </div>
</div>