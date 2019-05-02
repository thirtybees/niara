<div class="beesblog-post-info">
    {if isset($showAuthor) && $showAuthor}
        {l s='Posted by' mod='beesblog'}
        <span>
            {if $authorStyle}
                {$post->employee->firstname|escape:'htmlall':'UTF-8'} {$post->employee->lastname|escape:'htmlall':'UTF-8'}
            {else}
                 {$post->employee->lastname|escape:'htmlall':'UTF-8'} {$post->employee->firstname|escape:'htmlall':'UTF-8'}
            {/if}
        </span>
    {/if}
    {if isset($showDate) && $showDate}
        <i class="icon icon-time"></i>&nbsp;
        {$post->published|date_format}
    {/if}

    <i class="icon icon-sitemap"></i>&nbsp;
    <span>
        <a href="{BeesBlog::GetBeesBlogLink('beesblog_category', ['cat_rewrite' => $post->category->link_rewrite])}">
            {$post->category->title|escape:'htmlall':'UTF-8'}
        </a>
    </span>
    {if isset($showComments) && $showComments && $post->comments_enabled}
        <span class="beesblog-comment-counter">
            <i class="icon icon-comments"></i>&nbsp;
            <a title="{l s='0 Comments' mod='beesblog'}"
               href="{$postPath|escape:'htmlall':'UTF-8'}#disqus_thread"
               data-disqus-identifier="{'blog-'|cat:Context::getContext()->language->iso_code|strtolower|cat:'-'|cat:$post->id|intval}"
            >
                {l s='0 Comments' mod='beesblog'}
            </a>
        </span>
    {/if}
    {if isset($showViewed) && $showViewed}
        <i class="icon icon-eye-open"></i>
        {l s=' views' mod='beesblog'} ({$post->viewed|escape:'htmlall':'UTF-8'})
    {/if}
</div>
