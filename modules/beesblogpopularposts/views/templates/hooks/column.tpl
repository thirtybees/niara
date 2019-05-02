{if !empty($beesblogPopularPostsPosts)}
    <div id="beesblog_column" class="block">
        <h4 class="title_block">
            <a href="{$beesblogPopularPostsBlogUrl|escape:'htmlall':'UTF-8'}" title="{l s='Popular posts' mod='beesblogpopularposts'}">{l s='Popular posts' mod='beesblogpopularposts'}</a>
        </h4>
        <div class="block_content">
            <ul>
                {foreach $beesblogPopularPostsPosts as $post}
                    <li class="clearfix">
                        <div class="beesblogpopularposts-content">
                            <h5>
                                <a class="beesblogpopularposts-title" href="{$post->link|escape:'htmlall':'UTF-8'}" title="{$post->title|escape:'htmlall':'UTF-8'}">
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
                <a href="{$beesblogPopularPostsBlogUrl|escape:'htmlall':'UTF-8'}" title="{l s='Bees blog' mod='beesblogpopularposts'}" class="btn btn-primary"><span>{l s='All posts' mod='beesblogpopularposts'} <i class="icon icon-chevron-right"></i></span></a>
            </div>
        </div>
    </div>
{/if}
