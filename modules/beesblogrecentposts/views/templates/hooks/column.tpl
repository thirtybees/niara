{if !empty($beesblogRecentPostsPosts)}

    <div id="beesblog_column" class="block">
        <h4 class="title_block">
            <a href="{$beesblogRecentPostsBlogUrl|escape:'htmlall':'UTF-8'}" title="{l s='Recent posts' mod='beesblogrecentposts'}">{l s='Recent posts' mod='beesblogrecentposts'}</a>
        </h4>
        <div class="block_content">
            <ul>
                {foreach $beesblogRecentPostsPosts as $post}
                    <li class="clearfix">
                        <div class="beesblogrecentposts-content">
                            <h5>
                                <a class="beesblogrecentposts-title" href="{$post->link|escape:'htmlall':'UTF-8'}" title="{$post->title|escape:'htmlall':'UTF-8'}">
                                    {$post->title|truncate:'20'|escape:'htmlall':'UTF-8'}
                                </a>
                            </h5>
                            <span>
                                <i class="icon icon-time"></i> {$post->published|date_format}
                                <i class="icon icon-eye"></i> {$post->viewed|intval}
                            </span>
                        </div>
                    </li>
                {/foreach}
            </ul>
            <br />
            <div>
                <a href="{$beesblogRecentPostsBlogUrl|escape:'htmlall':'UTF-8'}" title="{l s='Bees blog' mod='beesblogrecentposts'}" class="btn btn-primary"><span>{l s='All posts' mod='beesblogrecentposts'}</span></a>
            </div>
        </div>
    </div>
{/if}
