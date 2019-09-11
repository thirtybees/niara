{**
 * Copyright (C) 2019 thirty bees
 *
 * NOTICE OF LICENSE
 *
 * This source file is subject to the Academic Free License (AFL 3.0)
 * that is bundled with this package in the file LICENSE.md.
 * It is also available through the world-wide-web at this URL:
 * https://opensource.org/licenses/afl-3.0.php
 * If you did not receive a copy of the license and are unable to
 * obtain it through the world-wide-web, please send an email
 * to license@thirtybees.com so we can send you a copy immediately.
 *
 * @author    thirty bees <modules@thirtybees.com>
 * @copyright 2019 thirty bees
 * @license   Academic Free License (AFL 3.0)
 *}

{if !empty($beesblogRecentPostsPosts)}
	<section id="beesblog_home" class="recenthome-block col-xs-12">
		<div class="tm-hp text-center">
			<h2>
				<a href="{$beesblogRecentPostsBlogUrl|escape:'htmlall':'UTF-8'}" title="{l s='Recent posts' mod='beesblogrecentposts'}">
					<span class="tm-over">Latest <span>Blog </span> posts</span>
				</a>
			</h2>
			<p>{l s='Read latest posts from our blog.' mod='beesblog'}</p>
		</div>
		<div class="row">
			{foreach $beesblogRecentPostsPosts as $post}
				<article>
					<div class="col-xs-12 col-md-4">
						<div class="beesblogrecentpostshome-content">
								<a href="{$post->link|escape:'htmlall':'UTF-8'}" title="{$post->title|escape:'htmlall':'UTF-8'}">
									{assign var=imagePath value=Media::getMediaPath(BeesBlog::getPostImagePath($post->id))}
									{if ($imagePath)}
										<img class="img-responsive" src="{$imagePath|escape:'htmlall':'UTF-8'}" title="{$post->title|escape:'htmlall':'UTF-8'}" />
									{/if}
								</a>
							<h5>
								<a class="beesblogrecentpostshome-title" href="{$post->link|escape:'htmlall':'UTF-8'}" title="{$post->title|escape:'htmlall':'UTF-8'}">
									{$post->title|escape:'htmlall':'UTF-8'}
								</a>
								<span>
									<i class="icon icon-time"></i> {$post->published|date_format}
									<i class="icon icon-eye"></i> {$post->viewed|intval}
								</span>
							</h5>
							<p>{$post->content|truncate:'150'|strip_tags}</p>

							<p><a class="btn btn-primary" href="{$post->link|escape:'htmlall':'UTF-8'}" title="{$post->title|escape:'htmlall':'UTF-8'}">Read More</a></p>
						</div>
					</div>
				</article>
			{/foreach}
		</div>
	</section>
{/if}
