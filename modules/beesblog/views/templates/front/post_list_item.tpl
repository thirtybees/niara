{*
 * 2017 thirty bees
 *
 * NOTICE OF LICENSE
 *
 * This source file is subject to the Academic Free License (AFL 3.0)
 * that is bundled with this package in the file LICENSE.txt.
 * It is also available through the world-wide-web at this URL:
 * https://opensource.org/licenses/afl-3.0.php
 * If you did not receive a copy of the license and are unable to
 * obtain it through the world-wide-web, please send an email
 * to license@thirtybees.com so we can send you a copy immediately.
 *
 *  @author    thirty bees <modules@thirtybees.com>
 *  @copyright 2017 thirty bees
 *  @license   https://opensource.org/licenses/afl-3.0.php  Academic Free License (AFL 3.0)
*}
{assign var=imagePath value=Media::getMediaPath(BeesBlog::getPostImagePath($post->id))}
{assign var=postPath value=BeesBlog::GetBeesBlogLink('beesblog_post', ['blog_rewrite' => $post->link_rewrite])}
<div class="clearfix beesblog-post-list-item">
    <div id="beesblog-post-{$post->id|intval}">
       {if ($imagePath)}
                <a title="{$post->title|escape:'htmlall':'UTF-8'}" href="{$postPath|escape:'htmlall':'UTF-8'}">
                    <img class="img-responsive" alt="{$post->title|escape:'htmlall':'UTF-8'}" src="{$imagePath|escape:'htmlall':'UTF-8'}">
                </a>
            {/if}
        <h4 class="title_block">
            <a title="{$post->title|escape:'htmlall':'UTF-8'}" href="{$postPath|escape:'htmlall':'UTF-8'}">{$post->title|escape:'htmlall':'UTF-8'}</a>
        </h4>
        {include file="./post_info.tpl"}
        <div class="beesblog-post-list-summary">
            <span class="clearfix">
                {$post->getSummary()|escape:'htmlall':'UTF-8'}&nbsp;
              </span>
            <a title="{$post->title|escape:'htmlall':'UTF-8'}" href="{$postPath|escape:'htmlall':'UTF-8'}" class="beesblog-read-more-link">
                {l s='Read more' mod='beesblog'}
            </a>
        </div>
    </div>
</div>
